-- | Generated by __protobuf__ from file `google/protobuf/compiler/plugin.proto`
module Google.Protobuf.Compiler.Plugin
( Version(..), VersionRow, VersionR, parseVersion, putVersion, defaultVersion, mkVersion, mergeVersion
, CodeGeneratorRequest(..), CodeGeneratorRequestRow, CodeGeneratorRequestR, parseCodeGeneratorRequest, putCodeGeneratorRequest, defaultCodeGeneratorRequest, mkCodeGeneratorRequest, mergeCodeGeneratorRequest
, CodeGeneratorResponse(..), CodeGeneratorResponseRow, CodeGeneratorResponseR, parseCodeGeneratorResponse, putCodeGeneratorResponse, defaultCodeGeneratorResponse, mkCodeGeneratorResponse, mergeCodeGeneratorResponse
, CodeGeneratorResponse_File(..), CodeGeneratorResponse_FileRow, CodeGeneratorResponse_FileR, parseCodeGeneratorResponse_File, putCodeGeneratorResponse_File, defaultCodeGeneratorResponse_File, mkCodeGeneratorResponse_File, mergeCodeGeneratorResponse_File
, CodeGeneratorResponse_Feature(..)
)
where
import Protobuf.Internal.Prelude
import Protobuf.Internal.Prelude as Prelude

import Google.Protobuf.Descriptor as Google.Protobuf



-- | Message generated by __protobuf__ from `google.protobuf.compiler.Version`
-- |
-- | > The version number of protocol compiler.
newtype Version = Version VersionR
type VersionRow =
  ( major :: Prelude.Maybe Int
  , minor :: Prelude.Maybe Int
  , patch :: Prelude.Maybe Int
  , suffix :: Prelude.Maybe String
  , __unknown_fields :: Array Prelude.UnknownField
  )
type VersionR = Record VersionRow
derive instance genericVersion :: Prelude.Generic Version _
derive instance newtypeVersion :: Prelude.Newtype Version _
derive instance eqVersion :: Prelude.Eq Version
instance showVersion :: Prelude.Show Version where show x = Prelude.genericShow x

putVersion :: forall m. Prelude.MonadEffect m => Version -> Prelude.PutM m Prelude.Unit
putVersion (Version r) = do
  Prelude.putOptional 1 r.major Prelude.isDefault Prelude.encodeInt32Field
  Prelude.putOptional 2 r.minor Prelude.isDefault Prelude.encodeInt32Field
  Prelude.putOptional 3 r.patch Prelude.isDefault Prelude.encodeInt32Field
  Prelude.putOptional 4 r.suffix Prelude.isDefault Prelude.encodeStringField
  Prelude.traverse_ Prelude.putFieldUnknown r.__unknown_fields

parseVersion :: forall m. Prelude.MonadEffect m => Prelude.MonadRec m => Prelude.ByteLength -> Prelude.ParserT Prelude.DataView m Version
parseVersion length = Prelude.label "Version / " $
  Prelude.parseMessage Version defaultVersion parseField length
 where
  parseField
    :: Prelude.FieldNumberInt
    -> Prelude.WireType
    -> Prelude.ParserT Prelude.DataView m (Prelude.Builder VersionR VersionR)
  parseField 1 Prelude.VarInt = Prelude.label "major / " $ do
    x <- Prelude.decodeInt32
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "major") $ \_ -> Prelude.Just x
  parseField 2 Prelude.VarInt = Prelude.label "minor / " $ do
    x <- Prelude.decodeInt32
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "minor") $ \_ -> Prelude.Just x
  parseField 3 Prelude.VarInt = Prelude.label "patch / " $ do
    x <- Prelude.decodeInt32
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "patch") $ \_ -> Prelude.Just x
  parseField 4 Prelude.LenDel = Prelude.label "suffix / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "suffix") $ \_ -> Prelude.Just x
  parseField fieldNumber wireType = Prelude.parseFieldUnknown fieldNumber wireType

defaultVersion :: VersionR
defaultVersion =
  { major: Prelude.Nothing
  , minor: Prelude.Nothing
  , patch: Prelude.Nothing
  , suffix: Prelude.Nothing
  , __unknown_fields: []
  }

mkVersion :: forall r1 r3. Prelude.Union r1 VersionRow r3 => Prelude.Nub r3 VersionRow => Record r1 -> Version
mkVersion r = Version $ Prelude.merge r defaultVersion

mergeVersion :: Version -> Version -> Version
mergeVersion (Version l) (Version r) = Version
  { major: Prelude.alt l.major r.major
  , minor: Prelude.alt l.minor r.minor
  , patch: Prelude.alt l.patch r.patch
  , suffix: Prelude.alt l.suffix r.suffix
  , __unknown_fields: r.__unknown_fields <> l.__unknown_fields
  }


-- | Message generated by __protobuf__ from `google.protobuf.compiler.CodeGeneratorRequest`
-- |
-- | > An encoded CodeGeneratorRequest is written to the plugin's stdin.
newtype CodeGeneratorRequest = CodeGeneratorRequest CodeGeneratorRequestR
type CodeGeneratorRequestRow =
  ( file_to_generate :: Array String
  , parameter :: Prelude.Maybe String
  , proto_file :: Array Google.Protobuf.FileDescriptorProto
  , compiler_version :: Prelude.Maybe Version
  , __unknown_fields :: Array Prelude.UnknownField
  )
type CodeGeneratorRequestR = Record CodeGeneratorRequestRow
derive instance genericCodeGeneratorRequest :: Prelude.Generic CodeGeneratorRequest _
derive instance newtypeCodeGeneratorRequest :: Prelude.Newtype CodeGeneratorRequest _
derive instance eqCodeGeneratorRequest :: Prelude.Eq CodeGeneratorRequest
instance showCodeGeneratorRequest :: Prelude.Show CodeGeneratorRequest where show x = Prelude.genericShow x

putCodeGeneratorRequest :: forall m. Prelude.MonadEffect m => CodeGeneratorRequest -> Prelude.PutM m Prelude.Unit
putCodeGeneratorRequest (CodeGeneratorRequest r) = do
  Prelude.putRepeated 1 r.file_to_generate Prelude.encodeStringField
  Prelude.putOptional 2 r.parameter Prelude.isDefault Prelude.encodeStringField
  Prelude.putRepeated 15 r.proto_file $ Prelude.putLenDel Google.Protobuf.putFileDescriptorProto
  Prelude.putOptional 3 r.compiler_version (\_ -> false) $ Prelude.putLenDel putVersion
  Prelude.traverse_ Prelude.putFieldUnknown r.__unknown_fields

parseCodeGeneratorRequest :: forall m. Prelude.MonadEffect m => Prelude.MonadRec m => Prelude.ByteLength -> Prelude.ParserT Prelude.DataView m CodeGeneratorRequest
parseCodeGeneratorRequest length = Prelude.label "CodeGeneratorRequest / " $
  Prelude.parseMessage CodeGeneratorRequest defaultCodeGeneratorRequest parseField length
 where
  parseField
    :: Prelude.FieldNumberInt
    -> Prelude.WireType
    -> Prelude.ParserT Prelude.DataView m (Prelude.Builder CodeGeneratorRequestR CodeGeneratorRequestR)
  parseField 1 Prelude.LenDel = Prelude.label "file_to_generate / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "file_to_generate") $ Prelude.flip Prelude.snoc x
  parseField 2 Prelude.LenDel = Prelude.label "parameter / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "parameter") $ \_ -> Prelude.Just x
  parseField 15 Prelude.LenDel = Prelude.label "proto_file / " $ do
    x <- Prelude.parseLenDel Google.Protobuf.parseFileDescriptorProto
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "proto_file") $ Prelude.flip Prelude.snoc x
  parseField 3 Prelude.LenDel = Prelude.label "compiler_version / " $ do
    x <- Prelude.parseLenDel parseVersion
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "compiler_version") $ Prelude.Just Prelude.<<< Prelude.maybe x (mergeVersion x)
  parseField fieldNumber wireType = Prelude.parseFieldUnknown fieldNumber wireType

defaultCodeGeneratorRequest :: CodeGeneratorRequestR
defaultCodeGeneratorRequest =
  { file_to_generate: []
  , parameter: Prelude.Nothing
  , proto_file: []
  , compiler_version: Prelude.Nothing
  , __unknown_fields: []
  }

mkCodeGeneratorRequest :: forall r1 r3. Prelude.Union r1 CodeGeneratorRequestRow r3 => Prelude.Nub r3 CodeGeneratorRequestRow => Record r1 -> CodeGeneratorRequest
mkCodeGeneratorRequest r = CodeGeneratorRequest $ Prelude.merge r defaultCodeGeneratorRequest

mergeCodeGeneratorRequest :: CodeGeneratorRequest -> CodeGeneratorRequest -> CodeGeneratorRequest
mergeCodeGeneratorRequest (CodeGeneratorRequest l) (CodeGeneratorRequest r) = CodeGeneratorRequest
  { file_to_generate: r.file_to_generate <> l.file_to_generate
  , parameter: Prelude.alt l.parameter r.parameter
  , proto_file: r.proto_file <> l.proto_file
  , compiler_version: Prelude.mergeWith mergeVersion l.compiler_version r.compiler_version
  , __unknown_fields: r.__unknown_fields <> l.__unknown_fields
  }


-- | Message generated by __protobuf__ from `google.protobuf.compiler.CodeGeneratorResponse`
-- |
-- | > The plugin writes an encoded CodeGeneratorResponse to stdout.
newtype CodeGeneratorResponse = CodeGeneratorResponse CodeGeneratorResponseR
type CodeGeneratorResponseRow =
  ( error :: Prelude.Maybe String
  , supported_features :: Prelude.Maybe Prelude.UInt64
  , file :: Array CodeGeneratorResponse_File
  , __unknown_fields :: Array Prelude.UnknownField
  )
type CodeGeneratorResponseR = Record CodeGeneratorResponseRow
derive instance genericCodeGeneratorResponse :: Prelude.Generic CodeGeneratorResponse _
derive instance newtypeCodeGeneratorResponse :: Prelude.Newtype CodeGeneratorResponse _
derive instance eqCodeGeneratorResponse :: Prelude.Eq CodeGeneratorResponse
instance showCodeGeneratorResponse :: Prelude.Show CodeGeneratorResponse where show x = Prelude.genericShow x

putCodeGeneratorResponse :: forall m. Prelude.MonadEffect m => CodeGeneratorResponse -> Prelude.PutM m Prelude.Unit
putCodeGeneratorResponse (CodeGeneratorResponse r) = do
  Prelude.putOptional 1 r.error Prelude.isDefault Prelude.encodeStringField
  Prelude.putOptional 2 r.supported_features Prelude.isDefault Prelude.encodeUint64Field
  Prelude.putRepeated 15 r.file $ Prelude.putLenDel putCodeGeneratorResponse_File
  Prelude.traverse_ Prelude.putFieldUnknown r.__unknown_fields

parseCodeGeneratorResponse :: forall m. Prelude.MonadEffect m => Prelude.MonadRec m => Prelude.ByteLength -> Prelude.ParserT Prelude.DataView m CodeGeneratorResponse
parseCodeGeneratorResponse length = Prelude.label "CodeGeneratorResponse / " $
  Prelude.parseMessage CodeGeneratorResponse defaultCodeGeneratorResponse parseField length
 where
  parseField
    :: Prelude.FieldNumberInt
    -> Prelude.WireType
    -> Prelude.ParserT Prelude.DataView m (Prelude.Builder CodeGeneratorResponseR CodeGeneratorResponseR)
  parseField 1 Prelude.LenDel = Prelude.label "error / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "error") $ \_ -> Prelude.Just x
  parseField 2 Prelude.VarInt = Prelude.label "supported_features / " $ do
    x <- Prelude.decodeUint64
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "supported_features") $ \_ -> Prelude.Just x
  parseField 15 Prelude.LenDel = Prelude.label "file / " $ do
    x <- Prelude.parseLenDel parseCodeGeneratorResponse_File
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "file") $ Prelude.flip Prelude.snoc x
  parseField fieldNumber wireType = Prelude.parseFieldUnknown fieldNumber wireType

defaultCodeGeneratorResponse :: CodeGeneratorResponseR
defaultCodeGeneratorResponse =
  { error: Prelude.Nothing
  , supported_features: Prelude.Nothing
  , file: []
  , __unknown_fields: []
  }

mkCodeGeneratorResponse :: forall r1 r3. Prelude.Union r1 CodeGeneratorResponseRow r3 => Prelude.Nub r3 CodeGeneratorResponseRow => Record r1 -> CodeGeneratorResponse
mkCodeGeneratorResponse r = CodeGeneratorResponse $ Prelude.merge r defaultCodeGeneratorResponse

mergeCodeGeneratorResponse :: CodeGeneratorResponse -> CodeGeneratorResponse -> CodeGeneratorResponse
mergeCodeGeneratorResponse (CodeGeneratorResponse l) (CodeGeneratorResponse r) = CodeGeneratorResponse
  { error: Prelude.alt l.error r.error
  , supported_features: Prelude.alt l.supported_features r.supported_features
  , file: r.file <> l.file
  , __unknown_fields: r.__unknown_fields <> l.__unknown_fields
  }


-- | Message generated by __protobuf__ from `google.protobuf.compiler.CodeGeneratorResponse.File`
-- |
-- | > Represents a single generated file.
newtype CodeGeneratorResponse_File = CodeGeneratorResponse_File CodeGeneratorResponse_FileR
type CodeGeneratorResponse_FileRow =
  ( name :: Prelude.Maybe String
  , insertion_point :: Prelude.Maybe String
  , content :: Prelude.Maybe String
  , generated_code_info :: Prelude.Maybe Google.Protobuf.GeneratedCodeInfo
  , __unknown_fields :: Array Prelude.UnknownField
  )
type CodeGeneratorResponse_FileR = Record CodeGeneratorResponse_FileRow
derive instance genericCodeGeneratorResponse_File :: Prelude.Generic CodeGeneratorResponse_File _
derive instance newtypeCodeGeneratorResponse_File :: Prelude.Newtype CodeGeneratorResponse_File _
derive instance eqCodeGeneratorResponse_File :: Prelude.Eq CodeGeneratorResponse_File
instance showCodeGeneratorResponse_File :: Prelude.Show CodeGeneratorResponse_File where show x = Prelude.genericShow x

putCodeGeneratorResponse_File :: forall m. Prelude.MonadEffect m => CodeGeneratorResponse_File -> Prelude.PutM m Prelude.Unit
putCodeGeneratorResponse_File (CodeGeneratorResponse_File r) = do
  Prelude.putOptional 1 r.name Prelude.isDefault Prelude.encodeStringField
  Prelude.putOptional 2 r.insertion_point Prelude.isDefault Prelude.encodeStringField
  Prelude.putOptional 15 r.content Prelude.isDefault Prelude.encodeStringField
  Prelude.putOptional 16 r.generated_code_info (\_ -> false) $ Prelude.putLenDel Google.Protobuf.putGeneratedCodeInfo
  Prelude.traverse_ Prelude.putFieldUnknown r.__unknown_fields

parseCodeGeneratorResponse_File :: forall m. Prelude.MonadEffect m => Prelude.MonadRec m => Prelude.ByteLength -> Prelude.ParserT Prelude.DataView m CodeGeneratorResponse_File
parseCodeGeneratorResponse_File length = Prelude.label "File / " $
  Prelude.parseMessage CodeGeneratorResponse_File defaultCodeGeneratorResponse_File parseField length
 where
  parseField
    :: Prelude.FieldNumberInt
    -> Prelude.WireType
    -> Prelude.ParserT Prelude.DataView m (Prelude.Builder CodeGeneratorResponse_FileR CodeGeneratorResponse_FileR)
  parseField 1 Prelude.LenDel = Prelude.label "name / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "name") $ \_ -> Prelude.Just x
  parseField 2 Prelude.LenDel = Prelude.label "insertion_point / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "insertion_point") $ \_ -> Prelude.Just x
  parseField 15 Prelude.LenDel = Prelude.label "content / " $ do
    x <- Prelude.decodeString
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "content") $ \_ -> Prelude.Just x
  parseField 16 Prelude.LenDel = Prelude.label "generated_code_info / " $ do
    x <- Prelude.parseLenDel Google.Protobuf.parseGeneratedCodeInfo
    pure $ Prelude.modify (Prelude.Proxy :: Prelude.Proxy "generated_code_info") $ Prelude.Just Prelude.<<< Prelude.maybe x (Google.Protobuf.mergeGeneratedCodeInfo x)
  parseField fieldNumber wireType = Prelude.parseFieldUnknown fieldNumber wireType

defaultCodeGeneratorResponse_File :: CodeGeneratorResponse_FileR
defaultCodeGeneratorResponse_File =
  { name: Prelude.Nothing
  , insertion_point: Prelude.Nothing
  , content: Prelude.Nothing
  , generated_code_info: Prelude.Nothing
  , __unknown_fields: []
  }

mkCodeGeneratorResponse_File :: forall r1 r3. Prelude.Union r1 CodeGeneratorResponse_FileRow r3 => Prelude.Nub r3 CodeGeneratorResponse_FileRow => Record r1 -> CodeGeneratorResponse_File
mkCodeGeneratorResponse_File r = CodeGeneratorResponse_File $ Prelude.merge r defaultCodeGeneratorResponse_File

mergeCodeGeneratorResponse_File :: CodeGeneratorResponse_File -> CodeGeneratorResponse_File -> CodeGeneratorResponse_File
mergeCodeGeneratorResponse_File (CodeGeneratorResponse_File l) (CodeGeneratorResponse_File r) = CodeGeneratorResponse_File
  { name: Prelude.alt l.name r.name
  , insertion_point: Prelude.alt l.insertion_point r.insertion_point
  , content: Prelude.alt l.content r.content
  , generated_code_info: Prelude.mergeWith Google.Protobuf.mergeGeneratedCodeInfo l.generated_code_info r.generated_code_info
  , __unknown_fields: r.__unknown_fields <> l.__unknown_fields
  }


-- | Enum generated by __protobuf__ from `google.protobuf.compiler.CodeGeneratorResponse.Feature`
-- |
-- | > Sync with code_generator.h.
data CodeGeneratorResponse_Feature
  = CodeGeneratorResponse_Feature_FEATURE_NONE
  | CodeGeneratorResponse_Feature_FEATURE_PROTO3_OPTIONAL
derive instance genericCodeGeneratorResponse_Feature :: Prelude.Generic CodeGeneratorResponse_Feature _
derive instance eqCodeGeneratorResponse_Feature :: Prelude.Eq CodeGeneratorResponse_Feature
instance showCodeGeneratorResponse_Feature :: Prelude.Show CodeGeneratorResponse_Feature where show = Prelude.genericShow
instance ordCodeGeneratorResponse_Feature :: Prelude.Ord CodeGeneratorResponse_Feature where compare = Prelude.genericCompare
instance boundedCodeGeneratorResponse_Feature :: Prelude.Bounded CodeGeneratorResponse_Feature
 where
  bottom = Prelude.genericBottom
  top = Prelude.genericTop
instance enumCodeGeneratorResponse_Feature :: Prelude.Enum CodeGeneratorResponse_Feature
 where
  succ = Prelude.genericSucc
  pred = Prelude.genericPred
instance boundedenumCodeGeneratorResponse_Feature :: Prelude.BoundedEnum CodeGeneratorResponse_Feature
 where
  cardinality = Prelude.genericCardinality
  toEnum (0) = Prelude.Just CodeGeneratorResponse_Feature_FEATURE_NONE
  toEnum (1) = Prelude.Just CodeGeneratorResponse_Feature_FEATURE_PROTO3_OPTIONAL
  toEnum _ = Prelude.Nothing
  fromEnum CodeGeneratorResponse_Feature_FEATURE_NONE = (0)
  fromEnum CodeGeneratorResponse_Feature_FEATURE_PROTO3_OPTIONAL = (1)
instance defaultCodeGeneratorResponse_Feature :: Prelude.Default CodeGeneratorResponse_Feature
 where
  default = CodeGeneratorResponse_Feature_FEATURE_NONE
  isDefault = eq CodeGeneratorResponse_Feature_FEATURE_NONE

