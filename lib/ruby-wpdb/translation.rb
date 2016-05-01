module WPDB
  class Translation < Sequel::Model(:"#{WPDB.user_prefix}icl_translations")
    many_to_one :post,
      key: :element_id,
      class: 'WPDB::Post'

    def original
      WPDB::Translation.where(trid: self.trid).where('source_language_code IS NULL').first
    end
  end
end
