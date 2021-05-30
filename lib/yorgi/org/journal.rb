module Yorgi::Org
  class Journal
    include Yorgi::Utils
    attr_reader :directory,
                :date_format,
                :file_format,
                :time_format,
                :date_prefix,
                :journal_file

    def initialize
      @directory = Settings.journal_directory
      @file_format = Settings.journal_file_format
      @time_format = Settings.journal_time_format
      @date_prefix = Settings.journal_date_prefix
      @date_format = Settings.journal_date_format
      @journal_file = File.join directory, now.strftime(file_format)
    end

    def add(text)
      text = "** #{now.strftime(time_format)} \n #{text}"

      add_headline unless File.exist? journal_file

      write(journal_file, text)
    end

    private

      def add_headline
        title = "#{date_prefix}#{now.strftime(date_format)}"
        write journal_file, title
      end

      def now
        DateTime.now
      end
  end
end
