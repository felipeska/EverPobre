// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to WTNote.h instead.

#import <CoreData/CoreData.h>


extern const struct WTNoteAttributes {
	__unsafe_unretained NSString *creation_date;
	__unsafe_unretained NSString *modification_date;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *photo;
	__unsafe_unretained NSString *text;
} WTNoteAttributes;

extern const struct WTNoteRelationships {
	__unsafe_unretained NSString *notebook;
} WTNoteRelationships;

extern const struct WTNoteFetchedProperties {
} WTNoteFetchedProperties;

@class WTNotebook;




@class NSObject;


@interface WTNoteID : NSManagedObjectID {}
@end

@interface _WTNote : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (WTNoteID*)objectID;





@property (nonatomic, strong) NSDate* creation_date;



//- (BOOL)validateCreation_date:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* modification_date;



//- (BOOL)validateModification_date:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) id photo;



//- (BOOL)validatePhoto:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* text;



//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) WTNotebook *notebook;

//- (BOOL)validateNotebook:(id*)value_ error:(NSError**)error_;





@end

@interface _WTNote (CoreDataGeneratedAccessors)

@end

@interface _WTNote (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreation_date;
- (void)setPrimitiveCreation_date:(NSDate*)value;




- (NSDate*)primitiveModification_date;
- (void)setPrimitiveModification_date:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (id)primitivePhoto;
- (void)setPrimitivePhoto:(id)value;




- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;





- (WTNotebook*)primitiveNotebook;
- (void)setPrimitiveNotebook:(WTNotebook*)value;


@end
