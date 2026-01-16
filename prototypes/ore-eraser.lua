data:extend(
{
  {
    type = "selection-tool",
    name = "ore-eraser",
    icon = "__ore-eraser__/graphics/ore-eraser.png",
    flags = { "not-stackable", "only-in-cursor", "spawnable" },
    auto_recycle = false,
    subgroup = "tool",
    stack_size = 1,
	icon_size = 32,
	show_in_library = true,
    select =
    {
      border_color = {0, 1, 0},
      mode = {"any-entity"},
	  entity_type_filters = { "resource" },
      cursor_box_type = "entity",
    },
    alt_select =
    {
      border_color = {1, 1, 0},
      mode = {"any-entity"},
	  entity_type_filters = { "resource" },
      cursor_box_type = "entity",
    }
  },
  {
    type = "shortcut",
    name = "ore-eraser",
    action = "spawn-item",
    localised_name = {"ore-eraser"},
    item_to_spawn = "ore-eraser",
    icon = "__ore-eraser__/graphics/ore-eraser.png",
    icon_size = 32,
    small_icon = "__ore-eraser__/graphics/ore-eraser.png",
    small_icon_size = 32,
    style = "default"
  }
}
)
