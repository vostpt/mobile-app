package pt.vost

import android.os.Bundle
import android.view.ViewTreeObserver
import android.view.WindowManager

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    //Remove full screen flag after load
    val vto = flutterView.viewTreeObserver

    vto.addOnGlobalLayoutListener {
      flutterView.viewTreeObserver.removeOnGlobalLayoutListener {  }
      window.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
    }
  }
}
