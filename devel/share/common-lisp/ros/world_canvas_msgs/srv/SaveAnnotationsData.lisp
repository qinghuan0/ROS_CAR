; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude SaveAnnotationsData-request.msg.html

(cl:defclass <SaveAnnotationsData-request> (roslisp-msg-protocol:ros-message)
  ((annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector world_canvas_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:Annotation :initial-element (cl:make-instance 'world_canvas_msgs-msg:Annotation)))
   (data
    :reader data
    :initarg :data
    :type (cl:vector world_canvas_msgs-msg:AnnotationData)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:AnnotationData :initial-element (cl:make-instance 'world_canvas_msgs-msg:AnnotationData))))
)

(cl:defclass SaveAnnotationsData-request (<SaveAnnotationsData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveAnnotationsData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveAnnotationsData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SaveAnnotationsData-request> is deprecated: use world_canvas_msgs-srv:SaveAnnotationsData-request instead.")))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <SaveAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotations-val is deprecated.  Use world_canvas_msgs-srv:annotations instead.")
  (annotations m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SaveAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveAnnotationsData-request>) ostream)
  "Serializes a message object of type '<SaveAnnotationsData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveAnnotationsData-request>) istream)
  "Deserializes a message object of type '<SaveAnnotationsData-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'world_canvas_msgs-msg:Annotation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'world_canvas_msgs-msg:AnnotationData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveAnnotationsData-request>)))
  "Returns string type for a service object of type '<SaveAnnotationsData-request>"
  "world_canvas_msgs/SaveAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAnnotationsData-request)))
  "Returns string type for a service object of type 'SaveAnnotationsData-request"
  "world_canvas_msgs/SaveAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveAnnotationsData-request>)))
  "Returns md5sum for a message object of type '<SaveAnnotationsData-request>"
  "60d78492918896c3c2a6be65553f2c9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveAnnotationsData-request)))
  "Returns md5sum for a message object of type 'SaveAnnotationsData-request"
  "60d78492918896c3c2a6be65553f2c9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveAnnotationsData-request>)))
  "Returns full string definition for message of type '<SaveAnnotationsData-request>"
  (cl:format cl:nil "# Utility service kept to make debug and testing easier:~%#   saves together annotations and its data assuming a 1-1 relationship.~%~%Annotation[] annotations~%AnnotationData[] data ~%~%================================================================================~%MSG: world_canvas_msgs/Annotation~%# Annotation: a generic descriptor for an element (object) in a semantic map~%# An annotation can be used to introspect, visualize or key into database filters/searches without~%# having to touch the described object directly~%#  - timestamp : Creation/last update time~%#  - world     : World the object belongs to~%#  - id        : Annotation unique id~%#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)~%#  - name      : Referenced object name~%#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)~%#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)~%#  - color     : R, G, B, A (optional)~%#  - size      : X, Y, Z (optional)~%#  - keywords  : Generic properties of this object: allows basic filtering without introspecting~%#                the object itself~%#  - relationships : List of associated annotations, used for retrieving operational sets of objects~%~%# General properties~%time timestamp~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID data_id~%string world~%string name~%string type~%~%# Physical properties~%int32  shape~%std_msgs/ColorRGBA color~%geometry_msgs/Vector3 size~%geometry_msgs/PoseWithCovarianceStamped pose~%~%# Querying properties~%string[] keywords~%uuid_msgs/UniqueID[] relationships~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAnnotationsData-request)))
  "Returns full string definition for message of type 'SaveAnnotationsData-request"
  (cl:format cl:nil "# Utility service kept to make debug and testing easier:~%#   saves together annotations and its data assuming a 1-1 relationship.~%~%Annotation[] annotations~%AnnotationData[] data ~%~%================================================================================~%MSG: world_canvas_msgs/Annotation~%# Annotation: a generic descriptor for an element (object) in a semantic map~%# An annotation can be used to introspect, visualize or key into database filters/searches without~%# having to touch the described object directly~%#  - timestamp : Creation/last update time~%#  - world     : World the object belongs to~%#  - id        : Annotation unique id~%#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)~%#  - name      : Referenced object name~%#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)~%#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)~%#  - color     : R, G, B, A (optional)~%#  - size      : X, Y, Z (optional)~%#  - keywords  : Generic properties of this object: allows basic filtering without introspecting~%#                the object itself~%#  - relationships : List of associated annotations, used for retrieving operational sets of objects~%~%# General properties~%time timestamp~%uuid_msgs/UniqueID id~%uuid_msgs/UniqueID data_id~%string world~%string name~%string type~%~%# Physical properties~%int32  shape~%std_msgs/ColorRGBA color~%geometry_msgs/Vector3 size~%geometry_msgs/PoseWithCovarianceStamped pose~%~%# Querying properties~%string[] keywords~%uuid_msgs/UniqueID[] relationships~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: world_canvas_msgs/AnnotationData~%# Data for an element in a semantic map stored as a byte array generated by ros::serialization~%# These objects are unique, although they can be referenced by one or more annotations~%#  - id   : Object unique id; data_id field on Annotation messages point to this uuid~%#  - type : Object type; duplicated from annotation for convenience on deserialization~%#  - data : Serialized data~%uuid_msgs/UniqueID id~%string type~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveAnnotationsData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveAnnotationsData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveAnnotationsData-request
    (cl:cons ':annotations (annotations msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SaveAnnotationsData-response.msg.html

(cl:defclass <SaveAnnotationsData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SaveAnnotationsData-response (<SaveAnnotationsData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveAnnotationsData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveAnnotationsData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<SaveAnnotationsData-response> is deprecated: use world_canvas_msgs-srv:SaveAnnotationsData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveAnnotationsData-response>) ostream)
  "Serializes a message object of type '<SaveAnnotationsData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveAnnotationsData-response>) istream)
  "Deserializes a message object of type '<SaveAnnotationsData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveAnnotationsData-response>)))
  "Returns string type for a service object of type '<SaveAnnotationsData-response>"
  "world_canvas_msgs/SaveAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAnnotationsData-response)))
  "Returns string type for a service object of type 'SaveAnnotationsData-response"
  "world_canvas_msgs/SaveAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveAnnotationsData-response>)))
  "Returns md5sum for a message object of type '<SaveAnnotationsData-response>"
  "60d78492918896c3c2a6be65553f2c9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveAnnotationsData-response)))
  "Returns md5sum for a message object of type 'SaveAnnotationsData-response"
  "60d78492918896c3c2a6be65553f2c9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveAnnotationsData-response>)))
  "Returns full string definition for message of type '<SaveAnnotationsData-response>"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAnnotationsData-response)))
  "Returns full string definition for message of type 'SaveAnnotationsData-response"
  (cl:format cl:nil "# What went wrong, if anything~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveAnnotationsData-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveAnnotationsData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveAnnotationsData-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveAnnotationsData)))
  'SaveAnnotationsData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveAnnotationsData)))
  'SaveAnnotationsData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAnnotationsData)))
  "Returns string type for a service object of type '<SaveAnnotationsData>"
  "world_canvas_msgs/SaveAnnotationsData")