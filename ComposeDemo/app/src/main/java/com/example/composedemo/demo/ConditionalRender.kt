package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ConditionalRender(condition: Boolean) {
    if (condition) {
        Text(
            text = "This component is rendered with condition \"true\".",
            modifier = Modifier.padding(all = 16.dp)
        )
    } else {
        Text(
            text = "This component is rendered with condition \"false\".",
            modifier = Modifier.padding(all = 16.dp)
        )
    }
}