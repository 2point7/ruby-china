module Homeland
  class Pipeline
    class YoukuFilter < HTML::Pipeline::TextFilter
      YOU_KU_REGEXP = /(\s|^|<div>|<br>)(http?:\/\/)(v\.)(youku\.com\/v_show\/)id_([A-Za-z0-9_-]*)(==\.html|\.html)(\&\S+)?(\?\S+)?/
      # suport:
      # 1. http://v.youku.com/v_show/id_XMTc2ODg3MDI3Mg==.html?spm=a2hww.20023042.m_223465.5~5~5~5~5~5~A&from=y1.3-idx-beta-1519-23042.223465.1-1
      # 2. http://v.youku.com/v_show/id_XNDMwOTc5ODYw.html?from=y1.2-1-103.4.1-1.1-1-2-0-0%26source%3Dautoclick#paction
      def call
        @text.gsub(YOU_KU_REGEXP) do
          youku_id = $5
          close_tag = $1 if ["<br>", "<div>"].include? $1
          wmode = context[:video_wmode]
          autoplay = context[:video_autoplay] || false
          hide_related = context[:video_hide_related] || false

          src = "http://player.youku.com/embed/#{youku_id}"
          params = []
          params << "wmode=#{wmode}" if wmode
          params << "autoplay=1" if autoplay
          params << "rel=0" if hide_related
          src += "?#{params.join '&'}" unless params.empty?

          %{#{close_tag}<span class="embed-responsive embed-responsive-16by9"><iframe class="embed-responsive-item" src="#{src}" allowfullscreen></iframe></span>}
        end
      end
    end
  end
end
