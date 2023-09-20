
"use strict";

let YAMLImport = require('./YAMLImport.js')
let ListMaps = require('./ListMaps.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let ListWorlds = require('./ListWorlds.js')
let PublishMap = require('./PublishMap.js')
let SetRelationship = require('./SetRelationship.js')
let GetAnnotations = require('./GetAnnotations.js')
let SaveMap = require('./SaveMap.js')
let SetKeyword = require('./SetKeyword.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let DeleteMap = require('./DeleteMap.js')
let RenameMap = require('./RenameMap.js')
let ResetDatabase = require('./ResetDatabase.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let GetAnnotationsData = require('./GetAnnotationsData.js')
let YAMLExport = require('./YAMLExport.js')

module.exports = {
  YAMLImport: YAMLImport,
  ListMaps: ListMaps,
  DeleteAnnotations: DeleteAnnotations,
  EditAnnotationsData: EditAnnotationsData,
  ListWorlds: ListWorlds,
  PublishMap: PublishMap,
  SetRelationship: SetRelationship,
  GetAnnotations: GetAnnotations,
  SaveMap: SaveMap,
  SetKeyword: SetKeyword,
  PubAnnotationsData: PubAnnotationsData,
  DeleteMap: DeleteMap,
  RenameMap: RenameMap,
  ResetDatabase: ResetDatabase,
  SaveAnnotationsData: SaveAnnotationsData,
  GetAnnotationsData: GetAnnotationsData,
  YAMLExport: YAMLExport,
};
