// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to WTNote.m instead.

#import "_WTNote.h"

const struct WTNoteAttributes WTNoteAttributes = {
	.creation_date = @"creation_date",
	.modification_date = @"modification_date",
	.name = @"name",
	.photo = @"photo",
	.text = @"text",
};

const struct WTNoteRelationships WTNoteRelationships = {
	.notebook = @"notebook",
};

const struct WTNoteFetchedProperties WTNoteFetchedProperties = {
};

@implementation WTNoteID
@end

@implementation _WTNote

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Note";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Note" inManagedObjectContext:moc_];
}

- (WTNoteID*)objectID {
	return (WTNoteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic creation_date;






@dynamic modification_date;






@dynamic name;






@dynamic photo;






@dynamic text;






@dynamic notebook;

	






@end
