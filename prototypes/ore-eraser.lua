data:extend(
{
  {
    type = "selection-tool",
    name = "ore-eraser",
    icon = "__ore-eraser__/graphics/ore-eraser.png",
    flags = {},
    subgroup = "tool",
    order = "c[automated-construction]-b[deconstruction-planner]",
    stack_size = 1,
	icon_size = 32,
	stackable = false,
    selection_color = { r = 0, g = 1, b = 0 },
    alt_selection_color = { r = 0, g = 0, b = 1 },
    selection_mode = {"any-entity"},
    alt_selection_mode = {"any-entity"},
    selection_cursor_box_type = "pair",
    alt_selection_cursor_box_type = "pair",
	show_in_library = true
  },
  {
    type = 'shortcut',
    name = 'give-ore-eraser',
    order = 'c[automated-construction]-b[deconstruction-planner]',
    action = 'create-blueprint-item',
    localised_name = {'item-name.ore-eraser'},
    technology_to_unlock = 'construction-robotics',
    item_to_create = 'ore-eraser',
    style = 'red',
    icon = {
      filename = '__ore-eraser__/graphics/ore-eraser.png',
      priority = 'extra-high-no-scale',
      size = 32,
      scale = 1,
      flags = {'icon'}
    },
    small_icon = {
      filename = '__ore-eraser__/graphics/ore-eraser.png',
      priority = 'extra-high-no-scale',
      size = 24,
      scale = 1,
      flags = {'icon'}
    },
    disabled_small_icon = {
      filename = '__ore-eraser__/graphics/ore-eraser-disabled.png',
      priority = 'extra-high-no-scale',
      size = 24,
      scale = 1,
      flags = {'icon'}
    }
  }
}
)
