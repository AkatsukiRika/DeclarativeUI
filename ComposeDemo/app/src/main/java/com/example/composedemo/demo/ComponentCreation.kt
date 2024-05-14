package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ComponentCreation() {
    Text(
        text = "Please select a type from the navigation bar to see effects.",
        modifier = Modifier.padding(all = 16.dp)
    )
}