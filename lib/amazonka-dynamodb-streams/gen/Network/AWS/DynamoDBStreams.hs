{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon DynamoDB__
--
-- Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html Capturing Table Activity with DynamoDB Streams> in the Amazon DynamoDB Developer Guide.
module Network.AWS.DynamoDBStreams
  ( -- * Service configuration
    dynamoDBStreamsService,

    -- * Errors
    -- $errors

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetShardIterator
    module Network.AWS.DynamoDBStreams.GetShardIterator,

    -- ** GetRecords
    module Network.AWS.DynamoDBStreams.GetRecords,

    -- ** ListStreams
    module Network.AWS.DynamoDBStreams.ListStreams,

    -- ** DescribeStream
    module Network.AWS.DynamoDBStreams.DescribeStream,

    -- * Types

    -- ** KeyType
    KeyType (..),

    -- ** OperationType
    OperationType (..),

    -- ** ShardIteratorType
    ShardIteratorType (..),

    -- ** StreamStatus
    StreamStatus (..),

    -- ** StreamViewType
    StreamViewType (..),

    -- ** AttributeValue
    AttributeValue (..),
    mkAttributeValue,
    avL,
    avNS,
    avM,
    avNULL,
    avN,
    avBS,
    avB,
    avSS,
    avS,
    avBOOL,

    -- ** Identity
    Identity (..),
    mkIdentity,
    iPrincipalId,
    iType,

    -- ** KeySchemaElement
    KeySchemaElement (..),
    mkKeySchemaElement,
    kseKeyType,
    kseAttributeName,

    -- ** Record
    Record (..),
    mkRecord,
    rUserIdentity,
    rEventVersion,
    rDynamodb,
    rAwsRegion,
    rEventName,
    rEventSource,
    rEventId,

    -- ** SequenceNumberRange
    SequenceNumberRange (..),
    mkSequenceNumberRange,
    snrStartingSequenceNumber,
    snrEndingSequenceNumber,

    -- ** Shard
    Shard (..),
    mkShard,
    sParentShardId,
    sSequenceNumberRange,
    sShardId,

    -- ** Stream
    Stream (..),
    mkStream,
    sStreamLabel,
    sStreamARN,
    sTableName,

    -- ** StreamDescription
    StreamDescription (..),
    mkStreamDescription,
    sdLastEvaluatedShardId,
    sdStreamLabel,
    sdStreamStatus,
    sdKeySchema,
    sdStreamViewType,
    sdStreamARN,
    sdShards,
    sdTableName,
    sdCreationRequestDateTime,

    -- ** StreamRecord
    StreamRecord (..),
    mkStreamRecord,
    srSizeBytes,
    srSequenceNumber,
    srApproximateCreationDateTime,
    srStreamViewType,
    srKeys,
    srOldImage,
    srNewImage,

    -- * Serialization types
    Lude.Base64 (..),
    Lude._Base64,
    Lude.Sensitive (..),
    Lude._Sensitive,
    Lude.Time (..),
    Lude._Time,
    Lude.DateTime,
    Lude.Timestamp,
  )
where

import Network.AWS.DynamoDBStreams.DescribeStream
import Network.AWS.DynamoDBStreams.GetRecords
import Network.AWS.DynamoDBStreams.GetShardIterator
import Network.AWS.DynamoDBStreams.ListStreams
import Network.AWS.DynamoDBStreams.Types
import Network.AWS.DynamoDBStreams.Waiters
import qualified Network.AWS.Prelude as Lude

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DynamoDBStreams'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
