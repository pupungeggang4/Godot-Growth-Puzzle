extends Node2D

@onready var node_floor: Node2D = get_node('../Entity/Floor')
@onready var node_up: Node2D = get_node('../Entity/Up')
var grid: Array[Array] = []

var data: Array[String] = [
    '..###...',
    '..#A#...',
    '..#.####',
    '###B.BA#',
    '#A.B.###',
    '####B#..',
    '...#A#..',
    '...###..'
]

func _ready() -> void:
    for i in range(len(data)):
        for j in range(len(data[i])):
            if data[i][j] == '#':
                var temp_entity: Node2D = load('res://scene/entity/wall.tscn').instantiate()
                temp_entity.position = Vector2(40 * j, 40 * i)
                node_up.add_child(temp_entity)
            elif data[i][j] == 'A':
                var temp_entity: Node2D = load('res://scene/entity/flower.tscn').instantiate()
                temp_entity.position = Vector2(40 * j, 40 * i)
                node_up.add_child(temp_entity)
            elif data[i][j] == 'B':
                var temp_entity: Node2D = load('res://scene/entity/water.tscn').instantiate()
                temp_entity.position = Vector2(40 * j, 40 * i)
                node_up.add_child(temp_entity)
    
func _process(delta: float) -> void:
    pass
