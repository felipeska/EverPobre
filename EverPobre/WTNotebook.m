#import "WTNotebook.h"


@interface WTNotebook ()

// Private interface goes here.

@end


@implementation WTNotebook

// Custom logic goes here.

+(id)notebookInContext:(NSManagedObjectContext *)aContext{
    //objeto con valores por defecto (falta rellenar las fechas)
    WTNotebook *nb = [self insertInManagedObjectContext:aContext];
    
    //ponemos las fechas
    nb.creation_date = [NSDate date];
    nb.modification_date = nb.creation_date;
    
    return nb;
}

#pragma mark - Life Cycle


- (void) awakeFromInsert{
    [super awakeFromInsert];
 
    // Me lo envian una sola vez, la primera vez que soy creado
    [self setupKVO];
}

- (void) awakeFromFetch{
    [super awakeFromFetch];
    // Me lo envian siempre que sea recuperado de la BD
    [self setupKVO];
}

- (void) willTurnIntoFault{
    [super willTurnIntoFault];
    
    // Me lo envia cada vez que estoy a punto de morir
    [self tearDownKVO];
}

#pragma mark -KVO

-(void) setupKVO{
    // Montar las notificaciones
    
    [self addObserver:self
           forKeyPath:@"name" options:NSKeyValueObservingOptionNew |
                NSKeyValueObservingOptionOld context:NULL];
}

- (void) tearDownKVO{
    // Baja de notificaciones
    
    [self removeObserver:self forKeyPath:@"name"];
}

- (void) observeValueForKeyPath:(NSString *)keyPath
                       ofObject:(id)object
                         change:(NSDictionary *)change
                        context:(void *)context{
   
    //Actualizo la modificationDate
    self.modification_date = [NSDate date];
}


@end
