在這個LabVIEW project中，主要的VI是Control_demo.vi，這個程式能夠設定相機拍攝的ISO及曝光時間、看到影像liveview、
拍照並將照片儲存在指定位置等，而其他的VI只是subVI或僅用於開發時的測試使用。
在開啟Control_demo.vi時，可能會跳出"無法啟動程式，因為您的電腦遺失EDSDK.dll"對話框，請無視它，按下"確認"。
該對話框可能會重複出現，至多二次。

開啟此VI後，它會由於error而無法執行，請雙擊開啟"Dll for liveview.dll:downloadEvfData" 的node configuration，
確認此call library function的dll路徑(\vital supporting file for labview program\C++\Dll for liveview\x64\Debug)
正確指示到dll for liveview.dll後，按下ok即可。

接著雙擊開啟savephoto.vi node，再雙擊開啟這個subVI中的Dll for liveview.dll:dowloadphoto的node configuration，
確認此call library function的dll路徑正確指示到dll for liveview.dll後，按下ok即可。
每次開起這個專案時，都必須重複以上動作。

除了以上的兩個call library function node，其他call library function node所使用的dll皆是Canon的
EDSDK.dll(\vital supporting file for labview program\EDSDK131020CD(13.10.20)\Windows\EDSDK_64\Dll)。

執行這個專案的VI時，請不要同時開啟任何其他非本專案的VI或labview project，可能會造成SDK的函式呼叫錯誤。
尤其LV-EDSDK-Distribution_0.2中的labview檔案請務必關閉。