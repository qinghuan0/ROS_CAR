; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-msg)


;//! \htmlinclude Annotations.msg.html

(cl:defclass <Annotations> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector world_canvas_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'world_canvas_msgs-msg:Annotation :initial-element (cl:make-instance 'world_canvas_msgs-msg:Annotation))))
)

(cl:defclass Annotations (<Annotations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-msg:<Annotations> is deprecated: use world_canvas_msgs-msg:Annotations instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <Annotations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:map_id-val is deprecated.  Use world_canvas_msgs-msg:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <Annotations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:annotations-val is deprecated.  Use world_canvas_msgs-msg:annotations instead.")
  (annotations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotations>) ostream)
  "Serializes a message object of type '<Annotations>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotations>) istream)
  "Deserializes a message object of type '<Annotations>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotations>)))
  "Returns string type for a message object of type '<Annotations>"
  "world_canvas_msgs/Annotations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotations)))
  "Returns string type for a message object of type 'Annotations"
  "world_canvas_msgs/Annotations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotations>)))
  "Returns md5sum for a message object of type '<Annotations>"
  "5b47cb1c51cbc7a899bf81b52bdb8c27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotations)))
  "Returns md5sum for a message object of type 'Annotations"
  "5b47cb1c51cbc7a899bf81b52bdb8c27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotations>)))
  "Returns full string definition for message of type '<Annotations>"
  (cl:format cl:nil "# Semantic map:
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotations)))
  "Returns full string definition for message of type 'Annotations"
  (cl:format cl:nil "# Semantic map:
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotations>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotations>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotations
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':annotations (annotations msg))
))