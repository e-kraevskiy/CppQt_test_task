#ifndef MOUSEHANDLER_H
#define MOUSEHANDLER_H

#include <QObject>
#include <QWidget>

class MouseHandler : public QObject {
    Q_OBJECT
    Q_PROPERTY(int distance MEMBER distance_ NOTIFY updateDistance)
    Q_PROPERTY(int time MEMBER time_ NOTIFY updateTime)

public:
    explicit MouseHandler(QObject *parent = nullptr);

    void writeTimeToFile();


public slots:
    void setTime(int time);


signals:
    void updateDistance(int distanse);
    void updateTime(int time);

private:
    int distance_ = 0;
    int time_ = 0;
};

#endif // MOUSEHANDLER_H
