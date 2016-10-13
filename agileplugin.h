#ifndef AGILEPLUGIN_H
#define AGILEPLUGIN_H

#include <QObject>
#include <iostream>
#include "qgisplugin.h" // Plugin interface

// Forward declarations
class QAction;
class QgisInterface;

// Declaration of the AgilePlugin class
class AgilePlugin: public QObject, public QgisPlugin
{
Q_OBJECT

public:
    // Constructor (interface is passed at construction)
    explicit AgilePlugin(QgisInterface * interface);

    // Called when the plugin is enabled
    void initGui() override;

    // Called when the plugin is disabled
    void unload() override;

public slots:
    // Slot called when the plugin is launched
    void run();

private:
    QgisInterface * m_GISInterface; // GIS interface
    QAction * m_action; // Action in the menu bar
};

#endif
