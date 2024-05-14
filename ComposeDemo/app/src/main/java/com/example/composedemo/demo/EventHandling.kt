package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun EventHandling() {
    var clicked by remember { mutableStateOf(false) }

    Button(
        onClick = { clicked = true },
        modifier = Modifier.padding(16.dp)
    ) {
        Text(if (clicked) "Button clicked" else "Click me")
    }
}