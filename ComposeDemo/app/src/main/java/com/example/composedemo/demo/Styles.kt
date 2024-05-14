package com.example.composedemo.demo

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

@Composable
fun Styles() {
    Text(
        "Hello, World!",
        modifier = Modifier
            .background(Color.Blue)
            .padding(16.dp),
        color = Color.White
    )
}