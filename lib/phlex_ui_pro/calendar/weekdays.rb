# frozen_string_literal: true

module PhlexUI
    class Calendar::Weekdays < Base
        DAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday].freeze

        def template
            template_tag(data: { calendar_target: "weekdaysTemplate" }) do
                thead(**attrs) do
                    tr(class: "flex") do
                        DAYS.each do |day|
                            render_day(day)
                        end
                    end
                end
            end
        end

        private

        def render_day(day)
            th(
                scope: "col",
                class: "text-muted-text rounded-md w-8 font-normal text-[0.8rem]",
                aria_label: day
            ) { day[0..1] }
        end

        def default_attrs
            {}
        end
    end
end