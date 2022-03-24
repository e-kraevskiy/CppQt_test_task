#include "file_module.h"

FileModule::FileModule(QObject *parent) : QObject(parent) {

}

void FileModule::setDirPath(QString dir_path) {
    dir_path.remove("file://");
    dir_path_ = dir_path;
}

void FileModule::setTime(int time) {
    time_ = QString::number(time);
}

void FileModule::setDistance(int distance) {
    distance_ = QString::number(distance);
}

void FileModule::seveResult() {
    // Строка с текущими датой и временем
    QString datetime_string(QDateTime::currentDateTime().
                            toString("yyyy-MM-dd_hh:mm:ss"));
    // Создаем файл в папке
    QString file_path = dir_path_ + "/" + datetime_string +".txt";
    QFile result_file(file_path);
    // Открываем файл
    if (result_file.open(QIODevice::WriteOnly)) {
      // Создаём текстовый поток, в который будем писать данные
      QTextStream textStream(&result_file);

      textStream << "time=" + time_ + "\n";
      textStream << "distance=" + distance_ + "\n";

      result_file.close();
      qDebug() << "Результыты сохранены в " << file_path;
    }
}
