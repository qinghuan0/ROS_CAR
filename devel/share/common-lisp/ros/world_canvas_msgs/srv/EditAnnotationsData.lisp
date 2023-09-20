; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude EditAnnotationsData-request.msg.html

(cl:defclass <EditAnnotationsData-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (annotation
    :reader annotation
    :initarg :annotation
    :type world_canvas_msgs-msg:Annotation
    :initform (cl:make-instance 'world_canvas_msgs-msg:Annotation))
   (data
    :reader data
    :initarg :data
    :type world_canvas_msgs-msg:AnnotationData
    :initform (cl:make-instance 'world_canvas_msgs-msg:AnnotationData)))
)

(cl:defclass EditAnnotationsData-request (<EditAnnotationsData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditAnnotationsData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditAnnotationsData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<EditAnnotationsData-request> is deprecated: use world_canvas_msgs-srv:EditAnnotationsData-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'annotation-val :lambda-list '(m))
(cl:defmethod annotation-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotation-val is deprecated.  Use world_canvas_msgs-srv:annotation instead.")
  (annotation m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EditAnnotationsData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditAnnotationsData-request>)))
    "Constants for message type '<EditAnnotationsData-request>"
  '((:NEW . 0)
    (:EDIT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditAnnotationsData-request)))
    "Constants for message type 'EditAnnotationsData-request"
  '((:NEW . 0)
    (:EDIT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditAnnotationsData-request>) ostream)
  "Serializes a message object of type '<EditAnnotationsData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'annotation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditAnnotationsData-request>) istream)
  "Deserializes a message object of type '<EditAnnotationsData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'annotation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditAnnotationsData-request>)))
  "Returns string type for a service object of type '<EditAnnotationsData-request>"
  "world_canvas_msgs/EditAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData-request)))
  "Returns string type for a service object of type 'EditAnnotationsData-request"
  "world_canvas_msgs/EditAnnotationsDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditAnnotationsData-request>)))
  "Returns md5sum for a message object of type '<EditAnnotationsData-request>"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditAnnotationsData-request)))
  "Returns md5sum for a message object of type 'EditAnnotationsData-request"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditAnnotationsData-request>)))
  "Returns full string definition for message of type '<EditAnnotationsData-request>"
  (cl:format cl:nil "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditAnnotationsData-request)))
  "Returns full string definition for message of type 'EditAnnotationsData-request"
  (cl:format cl:nil "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditAnnotationsData-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'annotation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditAnnotationsData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EditAnnotationsData-request
    (cl:cons ':action (action msg))
    (cl:cons ':annotation (annotation msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude EditAnnotationsData-response.msg.html

(cl:defclass <EditAnnotationsData-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type world_canvas_msgs-msg:AnnotationData
    :initform (cl:make-instance 'world_canvas_msgs-msg:AnnotationData)))
)

(cl:defclass EditAnnotationsData-response (<EditAnnotationsData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EditAnnotationsData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EditAnnotationsData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<EditAnnotationsData-response> is deprecated: use world_canvas_msgs-srv:EditAnnotationsData-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EditAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:action-val is deprecated.  Use world_canvas_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EditAnnotationsData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:data-val is deprecated.  Use world_canvas_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EditAnnotationsData-response>)))
    "Constants for message type '<EditAnnotationsData-response>"
  '((:UPDATE . 10)
    (:DELETE . 12)
    (:CANCEL . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EditAnnotationsData-response)))
    "Constants for message type 'EditAnnotationsData-response"
  '((:UPDATE . 10)
    (:DELETE . 12)
    (:CANCEL . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EditAnnotationsData-response>) ostream)
  "Serializes a message object of type '<EditAnnotationsData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EditAnnotationsData-response>) istream)
  "Deserializes a message object of type '<EditAnnotationsData-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EditAnnotationsData-response>)))
  "Returns string type for a service object of type '<EditAnnotationsData-response>"
  "world_canvas_msgs/EditAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData-response)))
  "Returns string type for a service object of type 'EditAnnotationsData-response"
  "world_canvas_msgs/EditAnnotationsDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EditAnnotationsData-response>)))
  "Returns md5sum for a message object of type '<EditAnnotationsData-response>"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EditAnnotationsData-response)))
  "Returns md5sum for a message object of type 'EditAnnotationsData-response"
  "457c97e1836c61682d0f4bb2f4defba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EditAnnotationsData-response>)))
  "Returns full string definition for message of type '<EditAnnotationsData-response>"
  (cl:format cl:nil "uint8 UPDATE=10
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EditAnnotationsData-response)))
  "Returns full string definition for message of type 'EditAnnotationsData-response"
  (cl:format cl:nil "uint8 UPDATE=10
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EditAnnotationsData-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EditAnnotationsData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EditAnnotationsData-response
    (cl:cons ':action (action msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EditAnnotationsData)))
  'EditAnnotationsData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EditAnnotationsData)))
  'EditAnnotationsData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EditAnnotationsData)))
  "Returns string type for a service object of type '<EditAnnotationsData>"
  "world_canvas_msgs/EditAnnotationsData")