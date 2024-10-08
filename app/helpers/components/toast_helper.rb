module Components::ToastHelper
  def render_toast(header: nil, description: nil, action: nil, class: nil, data: {}, variant: :default, **options, &block)
    options[:class] ||= ""
    options[:class] << " destructive group border-destructive bg-destructive text-destructive-foreground " if variant == :destructive
    options[:position_class] = options[:position] == :top ? "right-0 sm:top-0" : "sm:bottom-0 sm:top-auto"
    render "components/ui/toast", header:, description:, action:, class:, data:, options: options
  end
end
