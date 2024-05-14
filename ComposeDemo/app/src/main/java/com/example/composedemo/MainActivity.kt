package com.example.composedemo

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ElevatedButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.composedemo.demo.ComponentCreation
import com.example.composedemo.demo.ConditionalRender
import com.example.composedemo.demo.DataPropagation
import com.example.composedemo.demo.EventHandling
import com.example.composedemo.demo.ListAndLooping
import com.example.composedemo.demo.ParameterDrilling
import com.example.composedemo.demo.Person
import com.example.composedemo.demo.SideEffects
import com.example.composedemo.demo.Slots
import com.example.composedemo.demo.States
import com.example.composedemo.demo.Styles
import com.example.composedemo.demo.UserInputHandling
import com.example.composedemo.ui.theme.ComposeDemoTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            var selectIndex by remember { mutableIntStateOf(0) }

            ComposeDemoTheme {
                Surface(modifier = Modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background) {
                    Column(modifier = Modifier.fillMaxWidth()) {
                        FunctionList(
                            selectIndex,
                            onSelect = {
                                selectIndex = it
                            }
                        )

                        when (selectIndex) {
                            0 -> ComponentCreation()
                            1 -> {
                                ConditionalRender(condition = false)
                                ConditionalRender(condition = true)
                            }
                            2 -> {
                                ParameterDrilling(data = 114514)
                                ParameterDrilling(data = 1919810)
                            }
                            3 -> EventHandling()
                            4 -> UserInputHandling()
                            5 -> ListAndLooping(items = listOf(
                                Person("John", 30, "1"),
                                Person("Jane", 28, "2"),
                                Person("Bob", 25, "3")
                            ))
                            6 -> Slots(
                                header = {
                                    Text(text = "Header", fontSize = 24.sp)
                                },
                                content = {
                                    Text(text = "Child Content")
                                }
                            )
                            7 -> Styles()
                            8 -> States()
                            9 -> DataPropagation(data = "provided data from MainActivity.kt")
                            10 -> SideEffects()
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun FunctionList(selectIndex: Int, onSelect: ((Int) -> Unit)? = null) {
    LazyRow(modifier = Modifier.fillMaxWidth()) {
        item {
            FunctionListItem(
                text = "Component Creation",
                isSelect = selectIndex == 0,
                onClick = {
                    onSelect?.invoke(0)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Conditional Render",
                isSelect = selectIndex == 1,
                onClick = {
                    onSelect?.invoke(1)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Parameter Drilling",
                isSelect = selectIndex == 2,
                onClick = {
                    onSelect?.invoke(2)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Event Handling",
                isSelect = selectIndex == 3,
                onClick = {
                    onSelect?.invoke(3)
                }
            )
        }
        item {
            FunctionListItem(
                text = "User Input Handling",
                isSelect = selectIndex == 4,
                onClick = {
                    onSelect?.invoke(4)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Lists & Looping",
                isSelect = selectIndex == 5,
                onClick = {
                    onSelect?.invoke(5)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Slots",
                isSelect = selectIndex == 6,
                onClick = {
                    onSelect?.invoke(6)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Styles",
                isSelect = selectIndex == 7,
                onClick = {
                    onSelect?.invoke(7)
                }
            )
        }
        item {
            FunctionListItem(
                text = "States",
                isSelect = selectIndex == 8,
                onClick = {
                    onSelect?.invoke(8)
                }
            )
        }
        item {
            FunctionListItem(
                text = "Scoped Data Propagation",
                isSelect = selectIndex == 9,
                onClick = {
                    onSelect?.invoke(9)
                }
            )
        }
        item {
            FunctionListItem(
                text = "SideEffects",
                isSelect = selectIndex == 10,
                onClick = {
                    onSelect?.invoke(10)
                }
            )
        }
    }
}

@Composable
private fun FunctionListItem(
    text: String,
    isSelect: Boolean = false,
    onClick: (() -> Unit)? = null
) {
    ElevatedButton(
        onClick = {
            onClick?.invoke()
        },
        modifier = Modifier.padding(horizontal = 8.dp),
        colors = if (isSelect) {
            ButtonDefaults.elevatedButtonColors(
                containerColor = MaterialTheme.colorScheme.primary
            )
        } else ButtonDefaults.elevatedButtonColors()
    ) {
        if (isSelect) {
            Text(text = text, color = Color.White)
        } else {
            Text(text = text)
        }
    }
}