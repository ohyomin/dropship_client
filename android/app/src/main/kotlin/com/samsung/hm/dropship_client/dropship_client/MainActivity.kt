package com.samsung.hm.dropship_client.dropship_client

import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private lateinit var channel: MethodChannel

    companion object {
        const val CHANNEL = "asdgsd"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger,
            "com.samsung.dropship_client/login")
        channel.setMethodCallHandler { call, result ->
            saLogin()
            result.success(1)
        }
    }

    fun saLogin() {
        var intent = Intent("com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN")
        intent.putExtra("client_id", "45231pynzc")
        intent.putExtra("additional", arrayOf("login_id"))
        startActivityForResult(intent, 1234)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        var id = data?.getStringExtra("login_id")
        Toast.makeText(this, "" + id, Toast.LENGTH_SHORT).show();
        channel.invokeMethod("resut", 2232);
    }
}
