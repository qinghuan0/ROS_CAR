; Auto-generated. Do not edit!


(cl:in-package world_canvas_msgs-msg)


;//! \htmlinclude Annotation.msg.html

(cl:defclass <Annotation> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (data_id
    :reader data_id
    :initarg :data_id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (world
    :reader world
    :initarg :world
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (size
    :reader size
    :initarg :size
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped))
   (keywords
    :reader keywords
    :initarg :keywords
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (relationships
    :reader relationships
    :initarg :relationships
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID))))
)

(cl:defclass Annotation (<Annotation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name world_canvas_msgs-msg:<Annotation> is deprecated: use world_canvas_msgs-msg:Annotation instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:timestamp-val is deprecated.  Use world_canvas_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:id-val is deprecated.  Use world_canvas_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data_id-val :lambda-list '(m))
(cl:defmethod data_id-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:data_id-val is deprecated.  Use world_canvas_msgs-msg:data_id instead.")
  (data_id m))

(cl:ensure-generic-function 'world-val :lambda-list '(m))
(cl:defmethod world-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:world-val is deprecated.  Use world_canvas_msgs-msg:world instead.")
  (world m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:name-val is deprecated.  Use world_canvas_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:type-val is deprecated.  Use world_canvas_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:shape-val is deprecated.  Use world_canvas_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:color-val is deprecated.  Use world_canvas_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:size-val is deprecated.  Use world_canvas_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:pose-val is deprecated.  Use world_canvas_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'keywords-val :lambda-list '(m))
(cl:defmethod keywords-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:keywords-val is deprecated.  Use world_canvas_msgs-msg:keywords instead.")
  (keywords m))

(cl:ensure-generic-function 'relationships-val :lambda-list '(m))
(cl:defmethod relationships-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader world_canvas_msgs-msg:relationships-val is deprecated.  Use world_canvas_msgs-msg:relationships instead.")
  (relationships m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotation>) ostream)
  "Serializes a message object of type '<Annotation>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data_id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'world))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'world))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keywords))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'keywords))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'relationships))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'relationships))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotation>) istream)
  "Deserializes a message object of type '<Annotation>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data_id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'world) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keywords) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keywords)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'relationships) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'relationships)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'uuid_msgs-msg:UniqueID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotation>)))
  "Returns string type for a message object of type '<Annotation>"
  "world_canvas_msgs/Annotation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotation)))
  "Returns string type for a message object of type 'Annotation"
  "world_canvas_msgs/Annotation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotation>)))
  "Returns md5sum for a message object of type '<Annotation>"
  "ad3b363d73f197c0fc0f70645a6b2598")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotation)))
  "Returns md5sum for a message object of type 'Annotation"
  "ad3b363d73f197c0fc0f70645a6b2598")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotation>)))
  "Returns full string definition for message of type '<Annotation>"
  (cl:format cl:nil "# Annotation: a generic descriptor for an element (object) in a semantic map
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotation)))
  "Returns full string definition for message of type 'Annotation"
  (cl:format cl:nil "# Annotation: a generic descriptor for an element (object) in a semantic map
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotation>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data_id))
     4 (cl:length (cl:slot-value msg 'world))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keywords) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'relationships) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotation>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotation
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':data_id (data_id msg))
    (cl:cons ':world (world msg))
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':color (color msg))
    (cl:cons ':size (size msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':keywords (keywords msg))
    (cl:cons ':relationships (relationships msg))
))