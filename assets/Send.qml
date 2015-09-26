import bb.cascades 1.4

Sheet {
    Page {
        titleBar: TitleBar {
            title: "Send BTC from WalletName"
            acceptAction: ActionItem {
                title: "send";
            }
            dismissAction: ActionItem {
                title: "cancel"
                onTriggered: {
                    close();
                }
            }
        }
        Container {
            topPadding: 20.0
            rightPadding: 20.0
            bottomPadding: 20.0
            leftPadding: 20.0
            Label {
                text: "Address:"
            }
            
            TextField {
                hintText: "Bitcoin address of the recipient"
            }
            
            Label {
                text: "Amount"
            }
            
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight

                }
                TextField {
                    hintText: "0.00000000"
                }
                Label {
                    text: "BTC"
                    verticalAlignment: VerticalAlignment.Center
                }
            }
            
            Button {
                text: "Scan QR code"
                imageSource: "icons/ic_scan_barcode.png"
            }
            
            Label {
                text: "Fees:"
            }
            
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                
                }
                TextField {
                    hintText: "0.0001"
                }
                Label {
                    text: "BTC"
                    verticalAlignment: VerticalAlignment.Center
                }
            }
            
            Divider {
                
            }
            
            
            
        }
    }
}