package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

val LocalData = compositionLocalOf { "Default data" }

@Composable
fun DataPropagation(data: String) {
    CompositionLocalProvider(LocalData provides data) {
        Intermediate()
    }
}

@Composable
fun Intermediate() {
    Child()
}

@Composable
fun Child() {
    val data = LocalData.current
    Text(
        text = "Received data: $data",
        modifier = Modifier.padding(16.dp)
    )
}