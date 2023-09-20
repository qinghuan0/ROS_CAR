// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class AnnotationData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotationData
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotationData
    let len;
    let data = new AnnotationData(null);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.data.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_canvas_msgs/AnnotationData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e21002b6b9f6af72d6986a93e819ba1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data for an element in a semantic map stored as a byte array generated by ros::serialization
    # These objects are unique, although they can be referenced by one or more annotations
    #  - id   : Object unique id; data_id field on Annotation messages point to this uuid
    #  - type : Object type; duplicated from annotation for convenience on deserialization
    #  - data : Serialized data
    uuid_msgs/UniqueID id
    string type
    uint8[] data
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotationData(null);
    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = AnnotationData;
