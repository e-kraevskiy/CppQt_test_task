#include "mouse_handler.h"

MouseHandler::MouseHandler(QObject *parent) : QObject(parent)
{

}

void MouseHandler::setTime(int time) {
    time_ = time;
    emit updateTime(time);
}
