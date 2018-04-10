#import "REAValueNode.h"

@implementation REAValueNode

- (instancetype)initWithID:(REANodeID)nodeID
                    config:(NSDictionary<NSString *, id> *)config
{
    if (self = [super initWithID:nodeID config:config]) {
        _value = config[@"value"];
    }
    return self;
}

- (void)setValue:(NSNumber *)value
{
  _value = value;
  [self markUpdated];
}

- (id)evaluate
{
  return _value;
}

@end
