class QgsCptCityColorRampDialog : QDialog
{
%TypeHeaderCode
#include <qgscptcitycolorrampdialog.h>
%End

  public:
    QgsCptCityColorRampDialog( QgsCptCityColorRamp* ramp, QWidget* parent /TransferThis/ = NULL );
    ~QgsCptCityColorRampDialog();

    QString selectedName() const;

    bool saveAsGradientRamp() const;

  public slots:
    void populateVariants();

    void on_mTreeView_clicked( const QModelIndex & );
    void on_mListWidget_itemClicked( QListWidgetItem * item );
    void on_mListWidget_itemSelectionChanged();
    void on_tabBar_currentChanged( int index );
    void on_pbtnLicenseDetails_pressed();
    void on_cboVariantName_currentIndexChanged( int index );
    void onFinished();
    void on_buttonBox_helpRequested();
    /* void refresh(); */

  protected:

    void updatePreview( bool clear = false );
    void clearCopyingInfo();
    void updateCopyingInfo( const QMap< QString, QString >& copyingMap );
    void updateTreeView( QgsCptCityDataItem *item, bool resetRamp = true );
    void updateListWidget( QgsCptCityDataItem *item );
    bool eventFilter( QObject *obj, QEvent *event );

    /* void refreshModel( const QModelIndex& index ); */
    bool updateRamp();
    void showAll();
    void setTreeModel( QgsCptCityBrowserModel* model );
};
