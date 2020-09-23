// Auto-generated. Do not edit!

// (in-package leap_motion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Bone = require('./Bone.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Finger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lmc_finger_id = null;
      this.type = null;
      this.length = null;
      this.width = null;
      this.to_string = null;
      this.bone_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lmc_finger_id')) {
        this.lmc_finger_id = initObj.lmc_finger_id
      }
      else {
        this.lmc_finger_id = 0;
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
      if (initObj.hasOwnProperty('bone_list')) {
        this.bone_list = initObj.bone_list
      }
      else {
        this.bone_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Finger
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lmc_finger_id]
    bufferOffset = _serializer.int32(obj.lmc_finger_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [to_string]
    bufferOffset = _serializer.string(obj.to_string, buffer, bufferOffset);
    // Serialize message field [bone_list]
    // Serialize the length for message field [bone_list]
    bufferOffset = _serializer.uint32(obj.bone_list.length, buffer, bufferOffset);
    obj.bone_list.forEach((val) => {
      bufferOffset = Bone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Finger
    let len;
    let data = new Finger(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lmc_finger_id]
    data.lmc_finger_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_string]
    data.to_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bone_list]
    // Deserialize array length for message field [bone_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bone_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bone_list[i] = Bone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.to_string.length;
    object.bone_list.forEach((val) => {
      length += Bone.getMessageSize(val);
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/Finger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c62c3b47717473d8242b45f476fc55c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # A unique id given to this finger
    int32 lmc_finger_id
    
    # The name of this finger. 
    uint8 type
    
    # The estimated length of the finger in meters. 
    float32 length
    
    # The estimated width of the finger in meters.
    float32 width
    
    # A string containing a brief, human readable description of the Finger object. 
    string to_string
    
    # List of bones associated with this finger
    Bone[] bone_list
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
    MSG: leap_motion/Bone
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
    const resolved = new Finger(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lmc_finger_id !== undefined) {
      resolved.lmc_finger_id = msg.lmc_finger_id;
    }
    else {
      resolved.lmc_finger_id = 0
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

    if (msg.bone_list !== undefined) {
      resolved.bone_list = new Array(msg.bone_list.length);
      for (let i = 0; i < resolved.bone_list.length; ++i) {
        resolved.bone_list[i] = Bone.Resolve(msg.bone_list[i]);
      }
    }
    else {
      resolved.bone_list = []
    }

    return resolved;
    }
};

module.exports = Finger;
