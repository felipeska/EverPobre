#import "_WTNote.h"

@class WTNotebook;

@interface WTNote : _WTNote {}
// Custom logic goes here.

+(id) noteInNotebook:(WTNotebook *) aNotebook withContext: (NSManagedObjectContext *)aContext;

@end
