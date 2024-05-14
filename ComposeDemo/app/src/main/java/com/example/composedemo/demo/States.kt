package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun States() {
    var count by remember { mutableIntStateOf(0) }

    Button(
        onClick = { count++ },
        modifier = Modifier.padding(16.dp)
    ) {
        Text("Count: $count")
    }
}