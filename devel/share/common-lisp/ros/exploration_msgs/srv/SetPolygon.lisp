; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-srv)


;//! \htmlinclude SetPolygon-request.msg.html

(cl:defclass <SetPolygon-request> (roslisp-msg-protocol:ros-message)
  ((polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass SetPolygon-request (<SetPolygon-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPolygon-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPolygon-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-srv:<SetPolygon-request> is deprecated: use exploration_msgs-srv:SetPolygon-request instead.")))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <SetPolygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-srv:polygon-val is deprecated.  Use exploration_msgs-srv:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPolygon-request>) ostream)
  "Serializes a message object of type '<SetPolygon-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPolygon-request>) istream)
  "Deserializes a message object of type '<SetPolygon-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPolygon-request>)))
  "Returns string type for a service object of type '<SetPolygon-request>"
  "exploration_msgs/SetPolygonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolygon-request)))
  "Returns string type for a service object of type 'SetPolygon-request"
  "exploration_msgs/SetPolygonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPolygon-request>)))
  "Returns md5sum for a message object of type '<SetPolygon-request>"
  "e257093c51f646bb3fd81ee37f162324")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPolygon-request)))
  "Returns md5sum for a message object of type 'SetPolygon-request"
  "e257093c51f646bb3fd81ee37f162324")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPolygon-request>)))
  "Returns full string definition for message of type '<SetPolygon-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped polygon
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPolygon-request)))
  "Returns full string definition for message of type 'SetPolygon-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped polygon
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPolygon-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPolygon-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPolygon-request
    (cl:cons ':polygon (polygon msg))
))
;//! \htmlinclude SetPolygon-response.msg.html

(cl:defclass <SetPolygon-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPolygon-response (<SetPolygon-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPolygon-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPolygon-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-srv:<SetPolygon-response> is deprecated: use exploration_msgs-srv:SetPolygon-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPolygon-response>) ostream)
  "Serializes a message object of type '<SetPolygon-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPolygon-response>) istream)
  "Deserializes a message object of type '<SetPolygon-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPolygon-response>)))
  "Returns string type for a service object of type '<SetPolygon-response>"
  "exploration_msgs/SetPolygonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolygon-response)))
  "Returns string type for a service object of type 'SetPolygon-response"
  "exploration_msgs/SetPolygonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPolygon-response>)))
  "Returns md5sum for a message object of type '<SetPolygon-response>"
  "e257093c51f646bb3fd81ee37f162324")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPolygon-response)))
  "Returns md5sum for a message object of type 'SetPolygon-response"
  "e257093c51f646bb3fd81ee37f162324")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPolygon-response>)))
  "Returns full string definition for message of type '<SetPolygon-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPolygon-response)))
  "Returns full string definition for message of type 'SetPolygon-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPolygon-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPolygon-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPolygon-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPolygon)))
  'SetPolygon-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPolygon)))
  'SetPolygon-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPolygon)))
  "Returns string type for a service object of type '<SetPolygon>"
  "exploration_msgs/SetPolygon")