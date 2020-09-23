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

class leapros {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.direction = null;
      this.normal = null;
      this.palmpos = null;
      this.ypr = null;
      this.thumb_metacarpal = null;
      this.thumb_proximal = null;
      this.thumb_intermediate = null;
      this.thumb_distal = null;
      this.thumb_tip = null;
      this.index_metacarpal = null;
      this.index_proximal = null;
      this.index_intermediate = null;
      this.index_distal = null;
      this.index_tip = null;
      this.middle_metacarpal = null;
      this.middle_proximal = null;
      this.middle_intermediate = null;
      this.middle_distal = null;
      this.middle_tip = null;
      this.ring_metacarpal = null;
      this.ring_proximal = null;
      this.ring_intermediate = null;
      this.ring_distal = null;
      this.ring_tip = null;
      this.pinky_metacarpal = null;
      this.pinky_proximal = null;
      this.pinky_intermediate = null;
      this.pinky_distal = null;
      this.pinky_tip = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('palmpos')) {
        this.palmpos = initObj.palmpos
      }
      else {
        this.palmpos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ypr')) {
        this.ypr = initObj.ypr
      }
      else {
        this.ypr = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('thumb_metacarpal')) {
        this.thumb_metacarpal = initObj.thumb_metacarpal
      }
      else {
        this.thumb_metacarpal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('thumb_proximal')) {
        this.thumb_proximal = initObj.thumb_proximal
      }
      else {
        this.thumb_proximal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('thumb_intermediate')) {
        this.thumb_intermediate = initObj.thumb_intermediate
      }
      else {
        this.thumb_intermediate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('thumb_distal')) {
        this.thumb_distal = initObj.thumb_distal
      }
      else {
        this.thumb_distal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('thumb_tip')) {
        this.thumb_tip = initObj.thumb_tip
      }
      else {
        this.thumb_tip = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('index_metacarpal')) {
        this.index_metacarpal = initObj.index_metacarpal
      }
      else {
        this.index_metacarpal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('index_proximal')) {
        this.index_proximal = initObj.index_proximal
      }
      else {
        this.index_proximal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('index_intermediate')) {
        this.index_intermediate = initObj.index_intermediate
      }
      else {
        this.index_intermediate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('index_distal')) {
        this.index_distal = initObj.index_distal
      }
      else {
        this.index_distal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('index_tip')) {
        this.index_tip = initObj.index_tip
      }
      else {
        this.index_tip = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle_metacarpal')) {
        this.middle_metacarpal = initObj.middle_metacarpal
      }
      else {
        this.middle_metacarpal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle_proximal')) {
        this.middle_proximal = initObj.middle_proximal
      }
      else {
        this.middle_proximal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle_intermediate')) {
        this.middle_intermediate = initObj.middle_intermediate
      }
      else {
        this.middle_intermediate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle_distal')) {
        this.middle_distal = initObj.middle_distal
      }
      else {
        this.middle_distal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('middle_tip')) {
        this.middle_tip = initObj.middle_tip
      }
      else {
        this.middle_tip = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ring_metacarpal')) {
        this.ring_metacarpal = initObj.ring_metacarpal
      }
      else {
        this.ring_metacarpal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ring_proximal')) {
        this.ring_proximal = initObj.ring_proximal
      }
      else {
        this.ring_proximal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ring_intermediate')) {
        this.ring_intermediate = initObj.ring_intermediate
      }
      else {
        this.ring_intermediate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ring_distal')) {
        this.ring_distal = initObj.ring_distal
      }
      else {
        this.ring_distal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ring_tip')) {
        this.ring_tip = initObj.ring_tip
      }
      else {
        this.ring_tip = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pinky_metacarpal')) {
        this.pinky_metacarpal = initObj.pinky_metacarpal
      }
      else {
        this.pinky_metacarpal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pinky_proximal')) {
        this.pinky_proximal = initObj.pinky_proximal
      }
      else {
        this.pinky_proximal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pinky_intermediate')) {
        this.pinky_intermediate = initObj.pinky_intermediate
      }
      else {
        this.pinky_intermediate = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pinky_distal')) {
        this.pinky_distal = initObj.pinky_distal
      }
      else {
        this.pinky_distal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pinky_tip')) {
        this.pinky_tip = initObj.pinky_tip
      }
      else {
        this.pinky_tip = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type leapros
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.normal, buffer, bufferOffset);
    // Serialize message field [palmpos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.palmpos, buffer, bufferOffset);
    // Serialize message field [ypr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ypr, buffer, bufferOffset);
    // Serialize message field [thumb_metacarpal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.thumb_metacarpal, buffer, bufferOffset);
    // Serialize message field [thumb_proximal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.thumb_proximal, buffer, bufferOffset);
    // Serialize message field [thumb_intermediate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.thumb_intermediate, buffer, bufferOffset);
    // Serialize message field [thumb_distal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.thumb_distal, buffer, bufferOffset);
    // Serialize message field [thumb_tip]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.thumb_tip, buffer, bufferOffset);
    // Serialize message field [index_metacarpal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.index_metacarpal, buffer, bufferOffset);
    // Serialize message field [index_proximal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.index_proximal, buffer, bufferOffset);
    // Serialize message field [index_intermediate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.index_intermediate, buffer, bufferOffset);
    // Serialize message field [index_distal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.index_distal, buffer, bufferOffset);
    // Serialize message field [index_tip]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.index_tip, buffer, bufferOffset);
    // Serialize message field [middle_metacarpal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle_metacarpal, buffer, bufferOffset);
    // Serialize message field [middle_proximal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle_proximal, buffer, bufferOffset);
    // Serialize message field [middle_intermediate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle_intermediate, buffer, bufferOffset);
    // Serialize message field [middle_distal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle_distal, buffer, bufferOffset);
    // Serialize message field [middle_tip]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.middle_tip, buffer, bufferOffset);
    // Serialize message field [ring_metacarpal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ring_metacarpal, buffer, bufferOffset);
    // Serialize message field [ring_proximal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ring_proximal, buffer, bufferOffset);
    // Serialize message field [ring_intermediate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ring_intermediate, buffer, bufferOffset);
    // Serialize message field [ring_distal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ring_distal, buffer, bufferOffset);
    // Serialize message field [ring_tip]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ring_tip, buffer, bufferOffset);
    // Serialize message field [pinky_metacarpal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pinky_metacarpal, buffer, bufferOffset);
    // Serialize message field [pinky_proximal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pinky_proximal, buffer, bufferOffset);
    // Serialize message field [pinky_intermediate]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pinky_intermediate, buffer, bufferOffset);
    // Serialize message field [pinky_distal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pinky_distal, buffer, bufferOffset);
    // Serialize message field [pinky_tip]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pinky_tip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type leapros
    let len;
    let data = new leapros(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [palmpos]
    data.palmpos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ypr]
    data.ypr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumb_metacarpal]
    data.thumb_metacarpal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumb_proximal]
    data.thumb_proximal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumb_intermediate]
    data.thumb_intermediate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumb_distal]
    data.thumb_distal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumb_tip]
    data.thumb_tip = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_metacarpal]
    data.index_metacarpal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_proximal]
    data.index_proximal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_intermediate]
    data.index_intermediate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_distal]
    data.index_distal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [index_tip]
    data.index_tip = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle_metacarpal]
    data.middle_metacarpal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle_proximal]
    data.middle_proximal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle_intermediate]
    data.middle_intermediate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle_distal]
    data.middle_distal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [middle_tip]
    data.middle_tip = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ring_metacarpal]
    data.ring_metacarpal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ring_proximal]
    data.ring_proximal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ring_intermediate]
    data.ring_intermediate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ring_distal]
    data.ring_distal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ring_tip]
    data.ring_tip = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinky_metacarpal]
    data.pinky_metacarpal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinky_proximal]
    data.pinky_proximal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinky_intermediate]
    data.pinky_intermediate = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinky_distal]
    data.pinky_distal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinky_tip]
    data.pinky_tip = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 696;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leap_motion/leapros';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e37447f7532c765d6c587f418fd5dd03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ##################################################
    ## Deprecated and will be removed in the future ##
    ##################################################
    
    Header header
    geometry_msgs/Vector3 direction
    geometry_msgs/Vector3 normal
    geometry_msgs/Point palmpos
    geometry_msgs/Vector3 ypr
    geometry_msgs/Point thumb_metacarpal
    geometry_msgs/Point thumb_proximal
    geometry_msgs/Point thumb_intermediate
    geometry_msgs/Point thumb_distal
    geometry_msgs/Point thumb_tip
    geometry_msgs/Point index_metacarpal
    geometry_msgs/Point index_proximal
    geometry_msgs/Point index_intermediate
    geometry_msgs/Point index_distal
    geometry_msgs/Point index_tip
    geometry_msgs/Point middle_metacarpal
    geometry_msgs/Point middle_proximal
    geometry_msgs/Point middle_intermediate
    geometry_msgs/Point middle_distal
    geometry_msgs/Point middle_tip
    geometry_msgs/Point ring_metacarpal
    geometry_msgs/Point ring_proximal
    geometry_msgs/Point ring_intermediate
    geometry_msgs/Point ring_distal
    geometry_msgs/Point ring_tip
    geometry_msgs/Point pinky_metacarpal
    geometry_msgs/Point pinky_proximal
    geometry_msgs/Point pinky_intermediate
    geometry_msgs/Point pinky_distal
    geometry_msgs/Point pinky_tip
    
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new leapros(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.normal !== undefined) {
      resolved.normal = geometry_msgs.msg.Vector3.Resolve(msg.normal)
    }
    else {
      resolved.normal = new geometry_msgs.msg.Vector3()
    }

    if (msg.palmpos !== undefined) {
      resolved.palmpos = geometry_msgs.msg.Point.Resolve(msg.palmpos)
    }
    else {
      resolved.palmpos = new geometry_msgs.msg.Point()
    }

    if (msg.ypr !== undefined) {
      resolved.ypr = geometry_msgs.msg.Vector3.Resolve(msg.ypr)
    }
    else {
      resolved.ypr = new geometry_msgs.msg.Vector3()
    }

    if (msg.thumb_metacarpal !== undefined) {
      resolved.thumb_metacarpal = geometry_msgs.msg.Point.Resolve(msg.thumb_metacarpal)
    }
    else {
      resolved.thumb_metacarpal = new geometry_msgs.msg.Point()
    }

    if (msg.thumb_proximal !== undefined) {
      resolved.thumb_proximal = geometry_msgs.msg.Point.Resolve(msg.thumb_proximal)
    }
    else {
      resolved.thumb_proximal = new geometry_msgs.msg.Point()
    }

    if (msg.thumb_intermediate !== undefined) {
      resolved.thumb_intermediate = geometry_msgs.msg.Point.Resolve(msg.thumb_intermediate)
    }
    else {
      resolved.thumb_intermediate = new geometry_msgs.msg.Point()
    }

    if (msg.thumb_distal !== undefined) {
      resolved.thumb_distal = geometry_msgs.msg.Point.Resolve(msg.thumb_distal)
    }
    else {
      resolved.thumb_distal = new geometry_msgs.msg.Point()
    }

    if (msg.thumb_tip !== undefined) {
      resolved.thumb_tip = geometry_msgs.msg.Point.Resolve(msg.thumb_tip)
    }
    else {
      resolved.thumb_tip = new geometry_msgs.msg.Point()
    }

    if (msg.index_metacarpal !== undefined) {
      resolved.index_metacarpal = geometry_msgs.msg.Point.Resolve(msg.index_metacarpal)
    }
    else {
      resolved.index_metacarpal = new geometry_msgs.msg.Point()
    }

    if (msg.index_proximal !== undefined) {
      resolved.index_proximal = geometry_msgs.msg.Point.Resolve(msg.index_proximal)
    }
    else {
      resolved.index_proximal = new geometry_msgs.msg.Point()
    }

    if (msg.index_intermediate !== undefined) {
      resolved.index_intermediate = geometry_msgs.msg.Point.Resolve(msg.index_intermediate)
    }
    else {
      resolved.index_intermediate = new geometry_msgs.msg.Point()
    }

    if (msg.index_distal !== undefined) {
      resolved.index_distal = geometry_msgs.msg.Point.Resolve(msg.index_distal)
    }
    else {
      resolved.index_distal = new geometry_msgs.msg.Point()
    }

    if (msg.index_tip !== undefined) {
      resolved.index_tip = geometry_msgs.msg.Point.Resolve(msg.index_tip)
    }
    else {
      resolved.index_tip = new geometry_msgs.msg.Point()
    }

    if (msg.middle_metacarpal !== undefined) {
      resolved.middle_metacarpal = geometry_msgs.msg.Point.Resolve(msg.middle_metacarpal)
    }
    else {
      resolved.middle_metacarpal = new geometry_msgs.msg.Point()
    }

    if (msg.middle_proximal !== undefined) {
      resolved.middle_proximal = geometry_msgs.msg.Point.Resolve(msg.middle_proximal)
    }
    else {
      resolved.middle_proximal = new geometry_msgs.msg.Point()
    }

    if (msg.middle_intermediate !== undefined) {
      resolved.middle_intermediate = geometry_msgs.msg.Point.Resolve(msg.middle_intermediate)
    }
    else {
      resolved.middle_intermediate = new geometry_msgs.msg.Point()
    }

    if (msg.middle_distal !== undefined) {
      resolved.middle_distal = geometry_msgs.msg.Point.Resolve(msg.middle_distal)
    }
    else {
      resolved.middle_distal = new geometry_msgs.msg.Point()
    }

    if (msg.middle_tip !== undefined) {
      resolved.middle_tip = geometry_msgs.msg.Point.Resolve(msg.middle_tip)
    }
    else {
      resolved.middle_tip = new geometry_msgs.msg.Point()
    }

    if (msg.ring_metacarpal !== undefined) {
      resolved.ring_metacarpal = geometry_msgs.msg.Point.Resolve(msg.ring_metacarpal)
    }
    else {
      resolved.ring_metacarpal = new geometry_msgs.msg.Point()
    }

    if (msg.ring_proximal !== undefined) {
      resolved.ring_proximal = geometry_msgs.msg.Point.Resolve(msg.ring_proximal)
    }
    else {
      resolved.ring_proximal = new geometry_msgs.msg.Point()
    }

    if (msg.ring_intermediate !== undefined) {
      resolved.ring_intermediate = geometry_msgs.msg.Point.Resolve(msg.ring_intermediate)
    }
    else {
      resolved.ring_intermediate = new geometry_msgs.msg.Point()
    }

    if (msg.ring_distal !== undefined) {
      resolved.ring_distal = geometry_msgs.msg.Point.Resolve(msg.ring_distal)
    }
    else {
      resolved.ring_distal = new geometry_msgs.msg.Point()
    }

    if (msg.ring_tip !== undefined) {
      resolved.ring_tip = geometry_msgs.msg.Point.Resolve(msg.ring_tip)
    }
    else {
      resolved.ring_tip = new geometry_msgs.msg.Point()
    }

    if (msg.pinky_metacarpal !== undefined) {
      resolved.pinky_metacarpal = geometry_msgs.msg.Point.Resolve(msg.pinky_metacarpal)
    }
    else {
      resolved.pinky_metacarpal = new geometry_msgs.msg.Point()
    }

    if (msg.pinky_proximal !== undefined) {
      resolved.pinky_proximal = geometry_msgs.msg.Point.Resolve(msg.pinky_proximal)
    }
    else {
      resolved.pinky_proximal = new geometry_msgs.msg.Point()
    }

    if (msg.pinky_intermediate !== undefined) {
      resolved.pinky_intermediate = geometry_msgs.msg.Point.Resolve(msg.pinky_intermediate)
    }
    else {
      resolved.pinky_intermediate = new geometry_msgs.msg.Point()
    }

    if (msg.pinky_distal !== undefined) {
      resolved.pinky_distal = geometry_msgs.msg.Point.Resolve(msg.pinky_distal)
    }
    else {
      resolved.pinky_distal = new geometry_msgs.msg.Point()
    }

    if (msg.pinky_tip !== undefined) {
      resolved.pinky_tip = geometry_msgs.msg.Point.Resolve(msg.pinky_tip)
    }
    else {
      resolved.pinky_tip = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = leapros;
