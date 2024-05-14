package com.example.composedemo.demo

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun Slots(
    header: @Composable () -> Unit,
    content: @Composable () -> Unit
) {
    Column(modifier = Modifier.padding(16.dp)) {
        header()
        content()
    }
}