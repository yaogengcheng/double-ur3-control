# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leap_motion/Gesture.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Gesture(genpy.Message):
  _md5sum = "a3bf4fe2d0e707244a5a679250ea8eba"
  _type = "leap_motion/Gesture"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# A unique id given to this gesture
int32 lmc_gesture_id

# Reports whether this Gesture instance represents a valid Gesture. 
bool is_valid

# The elapsed duration of the recognized movement up to the frame containing this 
# Gesture object, in microseconds. 
int64 duration_us

# The elapsed duration in seconds.
float32 duration_s

# Recognized movements occur over time and have a beginning, a middle, and an end. 
# The 'state' attribute reports where in that sequence this Gesture object falls.
int32 gesture_state
### STATE_INVALID == -1
### STATE_START == 1
### STATE_UPDATE == 2
### STATE_STOP == 3

# The supported types of gestures. 
int32 gesture_type
### TYPE_INVALID == -1
### TYPE_SWIPE == 1
### TYPE_CIRCLE == 4
### TYPE_SCREEN_TAP == 5
### TYPE_KEY_TAP == 6

# A string containing a brief, human-readable description of this Gesture. 
string to_string

# The list of fingers, tools ids associated with this Gesture, if any. 
int32[] pointable_ids

"""
  __slots__ = ['lmc_gesture_id','is_valid','duration_us','duration_s','gesture_state','gesture_type','to_string','pointable_ids']
  _slot_types = ['int32','bool','int64','float32','int32','int32','string','int32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lmc_gesture_id,is_valid,duration_us,duration_s,gesture_state,gesture_type,to_string,pointable_ids

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Gesture, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.lmc_gesture_id is None:
        self.lmc_gesture_id = 0
      if self.is_valid is None:
        self.is_valid = False
      if self.duration_us is None:
        self.duration_us = 0
      if self.duration_s is None:
        self.duration_s = 0.
      if self.gesture_state is None:
        self.gesture_state = 0
      if self.gesture_type is None:
        self.gesture_type = 0
      if self.to_string is None:
        self.to_string = ''
      if self.pointable_ids is None:
        self.pointable_ids = []
    else:
      self.lmc_gesture_id = 0
      self.is_valid = False
      self.duration_us = 0
      self.duration_s = 0.
      self.gesture_state = 0
      self.gesture_type = 0
      self.to_string = ''
      self.pointable_ids = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_iBqf2i().pack(_x.lmc_gesture_id, _x.is_valid, _x.duration_us, _x.duration_s, _x.gesture_state, _x.gesture_type))
      _x = self.to_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.pointable_ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.pointable_ids))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 25
      (_x.lmc_gesture_id, _x.is_valid, _x.duration_us, _x.duration_s, _x.gesture_state, _x.gesture_type,) = _get_struct_iBqf2i().unpack(str[start:end])
      self.is_valid = bool(self.is_valid)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.to_string = str[start:end].decode('utf-8')
      else:
        self.to_string = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.pointable_ids = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_iBqf2i().pack(_x.lmc_gesture_id, _x.is_valid, _x.duration_us, _x.duration_s, _x.gesture_state, _x.gesture_type))
      _x = self.to_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.pointable_ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.pointable_ids.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 25
      (_x.lmc_gesture_id, _x.is_valid, _x.duration_us, _x.duration_s, _x.gesture_state, _x.gesture_type,) = _get_struct_iBqf2i().unpack(str[start:end])
      self.is_valid = bool(self.is_valid)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.to_string = str[start:end].decode('utf-8')
      else:
        self.to_string = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.pointable_ids = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_iBqf2i = None
def _get_struct_iBqf2i():
    global _struct_iBqf2i
    if _struct_iBqf2i is None:
        _struct_iBqf2i = struct.Struct("<iBqf2i")
    return _struct_iBqf2i
