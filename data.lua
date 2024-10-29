-- We are only changing the vanilla roboport range
-- data.raw.item["pentapod-egg"].spoil_ticks = 1 * minute
data.raw.item["pentapod-egg"].spoil_to_trigger_result =
    {
      items_per_trigger = 1,
      trigger =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-entity",
              entity_name = "big-stomper-pentapod",
              affects_target = true,
              show_in_tooltip = true,
              as_enemy = true,
              find_non_colliding_position = true,
              offset_deviation = {{-5, -5}, {5, 5}},
              non_colliding_fail_result =
              {
                type = "direct",
                action_delivery =
                {
                  type = "instant",
                  source_effects =
                  {
                    {
                      type = "create-entity",
                      entity_name = "big-stomper-pentapod",
                      affects_target = true,
                      show_in_tooltip = false,
                      as_enemy = true,
                      offset_deviation = {{-1, -1}, {1, 1}},
                    }
                  }
                }
              }
            }
          }
        }
      }
    }