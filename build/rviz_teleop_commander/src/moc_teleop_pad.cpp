/****************************************************************************
** Meta object code from reading C++ file 'teleop_pad.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/rviz_teleop_commander/src/teleop_pad.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'teleop_pad.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_rviz_teleop_commander__TeleopPanel_t {
    QByteArrayData data[12];
    char stringdata0[179];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz_teleop_commander__TeleopPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz_teleop_commander__TeleopPanel_t qt_meta_stringdata_rviz_teleop_commander__TeleopPanel = {
    {
QT_MOC_LITERAL(0, 0, 34), // "rviz_teleop_commander::Teleop..."
QT_MOC_LITERAL(1, 35, 8), // "setTopic"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 5), // "topic"
QT_MOC_LITERAL(4, 51, 7), // "sendVel"
QT_MOC_LITERAL(5, 59, 17), // "update_joint1_rad"
QT_MOC_LITERAL(6, 77, 17), // "update_joint2_rad"
QT_MOC_LITERAL(7, 95, 17), // "update_joint3_rad"
QT_MOC_LITERAL(8, 113, 17), // "update_joint4_rad"
QT_MOC_LITERAL(9, 131, 17), // "update_joint5_rad"
QT_MOC_LITERAL(10, 149, 17), // "update_joint6_rad"
QT_MOC_LITERAL(11, 167, 11) // "updateTopic"

    },
    "rviz_teleop_commander::TeleopPanel\0"
    "setTopic\0\0topic\0sendVel\0update_joint1_rad\0"
    "update_joint2_rad\0update_joint3_rad\0"
    "update_joint4_rad\0update_joint5_rad\0"
    "update_joint6_rad\0updateTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz_teleop_commander__TeleopPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x0a /* Public */,
       4,    0,   62,    2, 0x09 /* Protected */,
       5,    0,   63,    2, 0x09 /* Protected */,
       6,    0,   64,    2, 0x09 /* Protected */,
       7,    0,   65,    2, 0x09 /* Protected */,
       8,    0,   66,    2, 0x09 /* Protected */,
       9,    0,   67,    2, 0x09 /* Protected */,
      10,    0,   68,    2, 0x09 /* Protected */,
      11,    0,   69,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz_teleop_commander::TeleopPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TeleopPanel *_t = static_cast<TeleopPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->sendVel(); break;
        case 2: _t->update_joint1_rad(); break;
        case 3: _t->update_joint2_rad(); break;
        case 4: _t->update_joint3_rad(); break;
        case 5: _t->update_joint4_rad(); break;
        case 6: _t->update_joint5_rad(); break;
        case 7: _t->update_joint6_rad(); break;
        case 8: _t->updateTopic(); break;
        default: ;
        }
    }
}

const QMetaObject rviz_teleop_commander::TeleopPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_rviz_teleop_commander__TeleopPanel.data,
      qt_meta_data_rviz_teleop_commander__TeleopPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *rviz_teleop_commander::TeleopPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz_teleop_commander::TeleopPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_rviz_teleop_commander__TeleopPanel.stringdata0))
        return static_cast<void*>(const_cast< TeleopPanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int rviz_teleop_commander::TeleopPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
