package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ParameterDrilling(data: Int) {
    Text(
        text = "This component received data of: $data",
        modifier = Modifier.padding(all = 16.dp)
    )
}