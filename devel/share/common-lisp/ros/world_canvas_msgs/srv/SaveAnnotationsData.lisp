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
  (cl:format cl:nil "# Utility service kept to make debug and testing easier:
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAnnotationsData-request)))
  "Returns full string definition for message of type 'SaveAnnotationsData-request"
  (cl:format cl:nil "# Utility service kept to make debug and testing easier:
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
  (cl:format cl:nil "# What went wrong, if anything
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAnnotationsData-response)))
  "Returns full string definition for message of type 'SaveAnnotationsData-response"
  (cl:format cl:nil "# What went wrong, if anything
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