# frozen_string_literal: true

module PhlexUI
    class Sheet::Description < Base
        def template(&)
            p(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-sm text-muted-text",
            }
        end
    end
end