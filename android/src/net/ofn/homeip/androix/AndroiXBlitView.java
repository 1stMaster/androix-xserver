
package net.homeip.ofn.androix;

import android.app.Activity;
import android.os.Bundle;
import android.content.Context;
import android.view.View;
import android.graphics.Bitmap;
import android.graphics.Canvas;

/* 2d version */

public class AndroiXBlitView extends View {
    private Bitmap mBitmap;

    public AndroiXBlitView(Context context) {
        super(context);

        int W = 800;
        int H = 480;

        mBitmap = Bitmap.createBitmap(W, H, Bitmap.Config.RGB_565);

    }

    @Override protected void onDraw(Canvas canvas) {
        canvas.drawBitmap(mBitmap, 0, 0, null);
        invalidate();
    }
}

