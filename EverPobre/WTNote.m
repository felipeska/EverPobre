#import "WTNote.h"
#import "WTNotebook.h"



@interface WTNote ()

// Private interface goes here.

@end


@implementation WTNote

// Custom logic goes here.

+(id) noteInNotebook:(WTNotebook *) aNotebook withContext: (NSManagedObjectContext *)aContext{
    WTNote *note = [WTNote insertInManagedObjectContext:aContext];
    note.notebook = aNotebook;
    note.creation_date = [NSDate date];
    note.modification_date = [NSDate date];
    
    return note;
}

#pragma mark - life cycle

-(void) awakeFromInsert{
    
    [super awakeFromInsert];
    
    [self setupKVO];
}

-(void) awakeFromFetch{
    
    [super awakeFromFetch];
    
    [self setupKVO];
}

-(void) willTurnIntoFault{
    
    [super willTurnIntoFault];
    
    [self tearDownKVO];
}

#pragma mark - KVO

-(void) setupKVO{
    
    NSArray *keys = @[@"name", @"text", @"photo"];
    
    for(NSString *key in keys){
        
        [self addObserver:self forKeyPath:key options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:NULL];
    }
    
}


- (void) tearDownKVO{
    [@[@"name", @"text", @"photo"] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [self removeObserver:self forKeyPath:obj];
    }];
    
    self.modification_date = [NSDate date];
}
@end
