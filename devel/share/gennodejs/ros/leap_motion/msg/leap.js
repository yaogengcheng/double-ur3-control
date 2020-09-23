// Auto-generated. Do not edit!

// (in-package leap_motion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class leap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hand_direction = null;
      this.hand_normal = null;
      this.hand_palm_pos = null;
      this.hand_pitch = null;
      this.hand_roll = null;
      this.hand_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hand_direction')) {
        this.hand_direction = initObj.hand_direction
      }
      else {
        this.hand_direction = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('hand_normal')) {
        this.hand_normal = initObj.hand_normal
      }
      else {
        this.hand_normal = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('hand_palm_pos')) {
        this.hand_palm_pos = initObj.hand_palm_pos
      }
      else {
        this.hand_palm_pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('hand_pitch')) {
        this.hand_pitch = initObj.hand_pitch
      }
      else {
        this.hand_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('hand_roll')) {
        this.hand_roll = initObj.hand_roll
      }
      else {
        this.hand_roll = 0.0;
      }
      if (initObj.hasOwnProperty('hand_yaw')) {
        this.hand_yaw = initObj.hand_yaw
      }
      else {
        this.hand_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type leap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [hand_direction] has the right length
    if (obj.hand_direction.length !== 3) {
      throw new Error('Unable to serialize array field hand_direction - length must be 3')
    }
    // Serialize message field [hand_direction]
    bufferOffset = _arraySerializer.float64(obj.hand_direction, buffer, bufferOffset, 3);
    // Check that the constant length array field [hand_normal] has the right length
    if (obj.hand_normal.length !== 3) {
      throw new Error('Unable to serialize array field hand_normal - length must be 3')
    }
    // Serialize message field [hand_normal]
    bufferOffset = _arraySerializer.float64(obj.hand_normal, buffer, bufferOffset, 3);
    // Check that the constant length array field [hand_palm_pos] has the right length
    if (obj.hand_palm_pos.length !== 3) {
      throw new Error('Unable to serialize array field hand_palm_pos - length must be 3')
    }
    // Serialize message field [hand_palm_pos]
    bufferOffset = _arraySerializer.float64(obj.hand_palm_pos, buffer, bufferOffset, 3);
    // Serialize message field [hand_pitch]
    bufferOffset = _serializer.float64(obj.hand_pitch, buffer, bufferOffset);
    // Serialize message field [hand_roll]
    bufferOffset = _serializer.float64(obj.hand_roll, buffer, bufferOffset);
    // Serialize message field [hand_yaw]
    bufferOffset = _serializer.float64(obj.hand_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type leap
    let len;
    let data = new leap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hand_direction]
    data.hand_direction = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [hand_normal]
    data.hand_normal = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [hand_palm_pos]
    data.hand_palm_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [hand_pitch]
    data.hand_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hand_roll]
    data.hand_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hand_yaw]
    data.hand_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/leap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e9a0dc7fd1a98f1d7489e9011c78807';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ##################################################
    ## Deprecated and will be removed in the future ##
    ##################################################
    
    Header header
    
    float64[3] hand_direction
    float64[3] hand_normal
    float64[3] hand_palm_pos
    float64 hand_pitch
    float64 hand_roll
    float64 hand_yaw
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new leap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hand_direction !== undefined) {
      resolved.hand_direction = msg.hand_direction;
    }
    else {
      resolved.hand_direction = new Array(3).fill(0)
    }

    if (msg.hand_normal !== undefined) {
      resolved.hand_normal = msg.hand_normal;
    }
    else {
      resolved.hand_normal = new Array(3).fill(0)
    }

    if (msg.hand_palm_pos !== undefined) {
      resolved.hand_palm_pos = msg.hand_palm_pos;
    }
    else {
      resolved.hand_palm_pos = new Array(3).fill(0)
    }

    if (msg.hand_pitch !== undefined) {
      resolved.hand_pitch = msg.hand_pitch;
    }
    else {
      resolved.hand_pitch = 0.0
    }

    if (msg.hand_roll !== undefined) {
      resolved.hand_roll = msg.hand_roll;
    }
    else {
      resolved.hand_roll = 0.0
    }

    if (msg.hand_yaw !== undefined) {
      resolved.hand_yaw = msg.hand_yaw;
    }
    else {
      resolved.hand_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = leap;
