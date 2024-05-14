package com.example.composedemo.demo

import android.widget.Toast
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.delay

@Composable
fun SideEffects() {
    val context = LocalContext.current
    LaunchedEffect(key1 = Unit) {
        delay(1500)
        Toast.makeText(context, "Side effect triggered", Toast.LENGTH_SHORT).show()
    }

    Text(
        text = "Side effect will be triggered after 1500ms.",
        modifier = Modifier.padding(16.dp)
    )
}