// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Annotation = require('./Annotation.js');

//-----------------------------------------------------------

class Annotations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.annotations = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('annotations')) {
        this.annotations = initObj.annotations
      }
      else {
        this.annotations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Annotations
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [annotations]
    // Serialize the length for message field [annotations]
    bufferOffset = _serializer.uint32(obj.annotations.length, buffer, bufferOffset);
    obj.annotations.forEach((val) => {
      bufferOffset = Annotation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Annotations
    let len;
    let data = new Annotations(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [annotations]
    // Deserialize array length for message field [annotations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotations[i] = Annotation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    object.annotations.forEach((val) => {
      length += Annotation.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_canvas_msgs/Annotations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b47cb1c51cbc7a899bf81b52bdb8c27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Semantic map:
    #  - geometric map id
    #  - a list of annotations
    
    string map_id
    Annotation[] annotations
    
    ================================================================================
    MSG: world_canvas_msgs/Annotation
    # Annotation: a generic descriptor for an element (object) in a semantic map
    # An annotation can be used to introspect, visualize or key into database filters/searches without
    # having to touch the described object directly
    #  - timestamp : Creation/last update time
    #  - world     : World the object belongs to
    #  - id        : Annotation unique id
    #  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)
    #  - name      : Referenced object name
    #  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)
    #  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)
    #  - color     : R, G, B, A (optional)
    #  - size      : X, Y, Z (optional)
    #  - keywords  : Generic properties of this object: allows basic filtering without introspecting
    #                the object itself
    #  - relationships : List of associated annotations, used for retrieving operational sets of objects
    
    # General properties
    time timestamp
    uuid_msgs/UniqueID id
    uuid_msgs/UniqueID data_id
    string world
    string name
    string type
    
    # Physical properties
    int32  shape
    std_msgs/ColorRGBA color
    geometry_msgs/Vector3 size
    geometry_msgs/PoseWithCovarianceStamped pose
    
    # Querying properties
    string[] keywords
    uuid_msgs/UniqueID[] relationships
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Annotations(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.annotations !== undefined) {
      resolved.annotations = new Array(msg.annotations.length);
      for (let i = 0; i < resolved.annotations.length; ++i) {
        resolved.annotations[i] = Annotation.Resolve(msg.annotations[i]);
      }
    }
    else {
      resolved.annotations = []
    }

    return resolved;
    }
};

module.exports = Annotations;
