; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-msg)


;//! \htmlinclude ExploreTaskGoal.msg.html

(cl:defclass <ExploreTaskGoal> (roslisp-msg-protocol:ros-message)
  ((explore_boundary
    :reader explore_boundary
    :initarg :explore_boundary
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (explore_center
    :reader explore_center
    :initarg :explore_center
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass ExploreTaskGoal (<ExploreTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploreTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploreTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-msg:<ExploreTaskGoal> is deprecated: use frontier_exploration-msg:ExploreTaskGoal instead.")))

(cl:ensure-generic-function 'explore_boundary-val :lambda-list '(m))
(cl:defmethod explore_boundary-val ((m <ExploreTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-msg:explore_boundary-val is deprecated.  Use frontier_exploration-msg:explore_boundary instead.")
  (explore_boundary m))

(cl:ensure-generic-function 'explore_center-val :lambda-list '(m))
(cl:defmethod explore_center-val ((m <ExploreTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-msg:explore_center-val is deprecated.  Use frontier_exploration-msg:explore_center instead.")
  (explore_center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploreTaskGoal>) ostream)
  "Serializes a message object of type '<ExploreTaskGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'explore_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'explore_center) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploreTaskGoal>) istream)
  "Deserializes a message object of type '<ExploreTaskGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'explore_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'explore_center) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploreTaskGoal>)))
  "Returns string type for a message object of type '<ExploreTaskGoal>"
  "frontier_exploration/ExploreTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploreTaskGoal)))
  "Returns string type for a message object of type 'ExploreTaskGoal"
  "frontier_exploration/ExploreTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploreTaskGoal>)))
  "Returns md5sum for a message object of type '<ExploreTaskGoal>"
  "b5f41b52fbca52a68ff7363f86187dbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploreTaskGoal)))
  "Returns md5sum for a message object of type 'ExploreTaskGoal"
  "b5f41b52fbca52a68ff7363f86187dbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploreTaskGoal>)))
  "Returns full string definition for message of type '<ExploreTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Boundary for frontier exploration
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploreTaskGoal)))
  "Returns full string definition for message of type 'ExploreTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Boundary for frontier exploration
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploreTaskGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'explore_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'explore_center))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploreTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploreTaskGoal
    (cl:cons ':explore_boundary (explore_boundary msg))
    (cl:cons ':explore_center (explore_center msg))
))