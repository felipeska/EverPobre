// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to WTNotebook.m instead.

#import "_WTNotebook.h"

const struct WTNotebookAttributes WTNotebookAttributes = {
	.creation_date = @"creation_date",
	.modification_date = @"modification_date",
	.name = @"name",
};

const struct WTNotebookRelationships WTNotebookRelationships = {
	.note = @"note",
};

const struct WTNotebookFetchedProperties WTNotebookFetchedProperties = {
};

@implementation WTNotebookID
@end

@implementation _WTNotebook

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Notebook" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Notebook";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Notebook" inManagedObjectContext:moc_];
}

- (WTNotebookID*)objectID {
	return (WTNotebookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic creation_date;






@dynamic modification_date;






@dynamic name;






@dynamic note;

	
- (NSMutableSet*)noteSet {
	[self willAccessValueForKey:@"note"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"note"];
  
	[self didAccessValueForKey:@"note"];
	return result;
}
	






@end
