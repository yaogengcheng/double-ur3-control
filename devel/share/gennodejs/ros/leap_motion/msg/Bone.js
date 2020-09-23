// Auto-generated. Do not edit!

// (in-package leap_motion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Bone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.length = null;
      this.width = null;
      this.to_string = null;
      this.bone_start = null;
      this.bone_end = null;
      this.center = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('to_string')) {
        this.to_string = initObj.to_string
      }
      else {
        this.to_string = '';
      }
      if (initObj.hasOwnProperty('bone_start')) {
        this.bone_start = initObj.bone_start
      }
      else {
        this.bone_start = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('bone_end')) {
        this.bone_end = initObj.bone_end
      }
      else {
        this.bone_end = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bone
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [to_string]
    bufferOffset = _serializer.string(obj.to_string, buffer, bufferOffset);
    // Serialize message field [bone_start]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.bone_start, buffer, bufferOffset);
    // Serialize message field [bone_end]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.bone_end, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = _arraySerializer.float32(obj.center, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bone
    let len;
    let data = new Bone(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_string]
    data.to_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bone_start]
    data.bone_start = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [bone_end]
    data.bone_end = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.to_string.length;
    length += 4 * object.center.length;
    return length + 129;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/Bone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce39afad61bdb16ab802b0100be50795';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # The name of this bone. 
    uint8 type
    
    # The estimated length of the bone in meters.
    float32 length
    
    # The estimated with of the bone in meters.
    float32 width
    
    # A string containing a brief, human readable description of the Bone object. 
    string to_string
    
    # The base of the bone, closest to the wrist. 
    geometry_msgs/Pose bone_start
    
    # The end of the bone, closest to the finger tip. 
    geometry_msgs/Pose bone_end
    
    # The midpoint of the bone. 
    float32[] center
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bone(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.to_string !== undefined) {
      resolved.to_string = msg.to_string;
    }
    else {
      resolved.to_string = ''
    }

    if (msg.bone_start !== undefined) {
      resolved.bone_start = geometry_msgs.msg.Pose.Resolve(msg.bone_start)
    }
    else {
      resolved.bone_start = new geometry_msgs.msg.Pose()
    }

    if (msg.bone_end !== undefined) {
      resolved.bone_end = geometry_msgs.msg.Pose.Resolve(msg.bone_end)
    }
    else {
      resolved.bone_end = new geometry_msgs.msg.Pose()
    }

    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = []
    }

    return resolved;
    }
};

module.exports = Bone;
