// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to WTNotebook.h instead.

#import <CoreData/CoreData.h>


extern const struct WTNotebookAttributes {
	__unsafe_unretained NSString *creation_date;
	__unsafe_unretained NSString *modification_date;
	__unsafe_unretained NSString *name;
} WTNotebookAttributes;

extern const struct WTNotebookRelationships {
	__unsafe_unretained NSString *note;
} WTNotebookRelationships;

extern const struct WTNotebookFetchedProperties {
} WTNotebookFetchedProperties;

@class WTNote;





@interface WTNotebookID : NSManagedObjectID {}
@end

@interface _WTNotebook : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (WTNotebookID*)objectID;





@property (nonatomic, strong) NSDate* creation_date;



//- (BOOL)validateCreation_date:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* modification_date;



//- (BOOL)validateModification_date:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *note;

- (NSMutableSet*)noteSet;





@end

@interface _WTNotebook (CoreDataGeneratedAccessors)

- (void)addNote:(NSSet*)value_;
- (void)removeNote:(NSSet*)value_;
- (void)addNoteObject:(WTNote*)value_;
- (void)removeNoteObject:(WTNote*)value_;

@end

@interface _WTNotebook (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreation_date;
- (void)setPrimitiveCreation_date:(NSDate*)value;




- (NSDate*)primitiveModification_date;
- (void)setPrimitiveModification_date:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveNote;
- (void)setPrimitiveNote:(NSMutableSet*)value;


@end
