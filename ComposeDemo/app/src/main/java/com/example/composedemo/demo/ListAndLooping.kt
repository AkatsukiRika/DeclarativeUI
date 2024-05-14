package com.example.composedemo.demo

import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ListAndLooping(items: List<Person>) {
    LazyColumn(modifier = Modifier.padding(16.dp)) {
        items(items, key = { person -> person.id }) { person ->
            Text("Name: ${person.name}, Age: ${person.age}")
        }
    }
}

data class Person(val name: String, val age: Int, val id: String)
