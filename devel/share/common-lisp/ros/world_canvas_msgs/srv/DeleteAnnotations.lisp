; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-srv)


;//! \htmlinclude DeleteAnnotations-request.msg.html

(cl:defclass <DeleteAnnotations-request> (roslisp-msg-protocol:ros-message)
  ((annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector world_canvas_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:Annotation :initial-element (cl:make-instance 'world_canvas_msgs-msg:Annotation))))
)

(cl:defclass DeleteAnnotations-request (<DeleteAnnotations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteAnnotations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteAnnotations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<DeleteAnnotations-request> is deprecated: use world_canvas_msgs-srv:DeleteAnnotations-request instead.")))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <DeleteAnnotations-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:annotations-val is deprecated.  Use world_canvas_msgs-srv:annotations instead.")
  (annotations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteAnnotations-request>) ostream)
  "Serializes a message object of type '<DeleteAnnotations-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteAnnotations-request>) istream)
  "Deserializes a message object of type '<DeleteAnnotations-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteAnnotations-request>)))
  "Returns string type for a service object of type '<DeleteAnnotations-request>"
  "world_canvas_msgs/DeleteAnnotationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteAnnotations-request)))
  "Returns string type for a service object of type 'DeleteAnnotations-request"
  "world_canvas_msgs/DeleteAnnotationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteAnnotations-request>)))
  "Returns md5sum for a message object of type '<DeleteAnnotations-request>"
  "cb16788c25593f2ef5fac1d356f16833")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteAnnotations-request)))
  "Returns md5sum for a message object of type 'DeleteAnnotations-request"
  "cb16788c25593f2ef5fac1d356f16833")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteAnnotations-request>)))
  "Returns full string definition for message of type '<DeleteAnnotations-request>"
  (cl:format cl:nil "# Request server to delete the given annotations
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteAnnotations-request)))
  "Returns full string definition for message of type 'DeleteAnnotations-request"
  (cl:format cl:nil "# Request server to delete the given annotations
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteAnnotations-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteAnnotations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteAnnotations-request
    (cl:cons ':annotations (annotations msg))
))
;//! \htmlinclude DeleteAnnotations-response.msg.html

(cl:defclass <DeleteAnnotations-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteAnnotations-response (<DeleteAnnotations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteAnnotations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteAnnotations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-srv:<DeleteAnnotations-response> is deprecated: use world_canvas_msgs-srv:DeleteAnnotations-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DeleteAnnotations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:result-val is deprecated.  Use world_canvas_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteAnnotations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-srv:message-val is deprecated.  Use world_canvas_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteAnnotations-response>) ostream)
  "Serializes a message object of type '<DeleteAnnotations-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteAnnotations-response>) istream)
  "Deserializes a message object of type '<DeleteAnnotations-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteAnnotations-response>)))
  "Returns string type for a service object of type '<DeleteAnnotations-response>"
  "world_canvas_msgs/DeleteAnnotationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteAnnotations-response)))
  "Returns string type for a service object of type 'DeleteAnnotations-response"
  "world_canvas_msgs/DeleteAnnotationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteAnnotations-response>)))
  "Returns md5sum for a message object of type '<DeleteAnnotations-response>"
  "cb16788c25593f2ef5fac1d356f16833")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteAnnotations-response)))
  "Returns md5sum for a message object of type 'DeleteAnnotations-response"
  "cb16788c25593f2ef5fac1d356f16833")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteAnnotations-response>)))
  "Returns full string definition for message of type '<DeleteAnnotations-response>"
  (cl:format cl:nil "# What went wrong, if anything
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteAnnotations-response)))
  "Returns full string definition for message of type 'DeleteAnnotations-response"
  (cl:format cl:nil "# What went wrong, if anything
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteAnnotations-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteAnnotations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteAnnotations-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteAnnotations)))
  'DeleteAnnotations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteAnnotations)))
  'DeleteAnnotations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteAnnotations)))
  "Returns string type for a service object of type '<DeleteAnnotations>"
  "world_canvas_msgs/DeleteAnnotations")