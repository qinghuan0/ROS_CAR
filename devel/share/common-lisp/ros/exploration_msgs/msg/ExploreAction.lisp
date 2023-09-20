; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude ExploreAction.msg.html

(cl:defclass <ExploreAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type exploration_msgs-msg:ExploreActionGoal
    :initform (cl:make-instance 'exploration_msgs-msg:ExploreActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type exploration_msgs-msg:ExploreActionResult
    :initform (cl:make-instance 'exploration_msgs-msg:ExploreActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type exploration_msgs-msg:ExploreActionFeedback
    :initform (cl:make-instance 'exploration_msgs-msg:ExploreActionFeedback)))
)

(cl:defclass ExploreAction (<ExploreAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploreAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploreAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<ExploreAction> is deprecated: use exploration_msgs-msg:ExploreAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <ExploreAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:action_goal-val is deprecated.  Use exploration_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <ExploreAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:action_result-val is deprecated.  Use exploration_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <ExploreAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:action_feedback-val is deprecated.  Use exploration_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploreAction>) ostream)
  "Serializes a message object of type '<ExploreAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploreAction>) istream)
  "Deserializes a message object of type '<ExploreAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploreAction>)))
  "Returns string type for a message object of type '<ExploreAction>"
  "exploration_msgs/ExploreAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploreAction)))
  "Returns string type for a message object of type 'ExploreAction"
  "exploration_msgs/ExploreAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploreAction>)))
  "Returns md5sum for a message object of type '<ExploreAction>"
  "30488ac74f208d2eb913d4cb55897d6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploreAction)))
  "Returns md5sum for a message object of type 'ExploreAction"
  "30488ac74f208d2eb913d4cb55897d6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploreAction>)))
  "Returns full string definition for message of type '<ExploreAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ExploreActionGoal action_goal~%ExploreActionResult action_result~%ExploreActionFeedback action_feedback~%~%================================================================================~%MSG: exploration_msgs/ExploreActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExploreGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: exploration_msgs/ExploreGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Name of plugin to use for exploration task
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploreAction)))
  "Returns full string definition for message of type 'ExploreAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ExploreActionGoal action_goal~%ExploreActionResult action_result~%ExploreActionFeedback action_feedback~%~%================================================================================~%MSG: exploration_msgs/ExploreActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ExploreGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: exploration_msgs/ExploreGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Name of plugin to use for exploration task
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploreAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploreAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploreAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))