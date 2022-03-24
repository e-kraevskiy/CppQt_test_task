#ifndef FILEMODULE_H
#define FILEMODULE_H

#include <iostream>
#include <QObject>
#include <QWidget>
#include <QDate>
#include <QDebug>
#include <QDir>
#include <QFile>
#include <QFileInfo>


class FileModule : public QObject {
    Q_OBJECT
public:
    explicit FileModule(QObject *parent = nullptr);


    void readResult();

public slots:
    void setDirPath(QString dir_path);
    void setTime(int time);
    void setDistance(int distance);
    void seveResult();

signals:
    void setPreviousResult(int distance);
private:
    QString dir_path_ = "/home/eugeniy";
    QString distance_ = "";
    QString time_ = "";
};

#endif // FILEMODULE_H
