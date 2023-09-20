; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude ExploreGoal.msg.html

(cl:defclass <ExploreGoal> (roslisp-msg-protocol:ros-message)
  ((strategy_plugin
    :reader strategy_plugin
    :initarg :strategy_plugin
    :type cl:string
    :initform "")
   (boundary
    :reader boundary
    :initarg :boundary
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (start_point
    :reader start_point
    :initarg :start_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass ExploreGoal (<ExploreGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploreGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploreGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<ExploreGoal> is deprecated: use exploration_msgs-msg:ExploreGoal instead.")))

(cl:ensure-generic-function 'strategy_plugin-val :lambda-list '(m))
(cl:defmethod strategy_plugin-val ((m <ExploreGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:strategy_plugin-val is deprecated.  Use exploration_msgs-msg:strategy_plugin instead.")
  (strategy_plugin m))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <ExploreGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:boundary-val is deprecated.  Use exploration_msgs-msg:boundary instead.")
  (boundary m))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <ExploreGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:start_point-val is deprecated.  Use exploration_msgs-msg:start_point instead.")
  (start_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploreGoal>) ostream)
  "Serializes a message object of type '<ExploreGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strategy_plugin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strategy_plugin))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploreGoal>) istream)
  "Deserializes a message object of type '<ExploreGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strategy_plugin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strategy_plugin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploreGoal>)))
  "Returns string type for a message object of type '<ExploreGoal>"
  "exploration_msgs/ExploreGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploreGoal)))
  "Returns string type for a message object of type 'ExploreGoal"
  "exploration_msgs/ExploreGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploreGoal>)))
  "Returns md5sum for a message object of type '<ExploreGoal>"
  "3cc884574b7172d99ae98a7b709ff914")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploreGoal)))
  "Returns md5sum for a message object of type 'ExploreGoal"
  "3cc884574b7172d99ae98a7b709ff914")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploreGoal>)))
  "Returns full string definition for message of type '<ExploreGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Name of plugin to use for exploration task~%string strategy_plugin~%~%# Boundary for exploration task~%geometry_msgs/PolygonStamped boundary~%~%# Starting point for exploration task, inside the boundary~%geometry_msgs/PointStamped start_point~%~%# TODO(pbovbel) do we want 'flexible parameters' using json_transport here?~%~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploreGoal)))
  "Returns full string definition for message of type 'ExploreGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Name of plugin to use for exploration task~%string strategy_plugin~%~%# Boundary for exploration task~%geometry_msgs/PolygonStamped boundary~%~%# Starting point for exploration task, inside the boundary~%geometry_msgs/PointStamped start_point~%~%# TODO(pbovbel) do we want 'flexible parameters' using json_transport here?~%~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploreGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strategy_plugin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploreGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploreGoal
    (cl:cons ':strategy_plugin (strategy_plugin msg))
    (cl:cons ':boundary (boundary msg))
    (cl:cons ':start_point (start_point msg))
))
